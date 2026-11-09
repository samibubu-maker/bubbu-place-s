<?php
header('Content-Type: text/html; charset=utf-8');

$conn = mysqli_connect("localhost", "root", "", "chatbot") or die("Database Error");
mysqli_set_charset($conn, "utf8mb4");

$mensaje = trim($_POST['text'] ?? '');
if ($mensaje === '') {
    exit("Escribe tu pregunta, por favor.");
}

function normalizar($t) {
    $t = mb_strtolower($t, 'UTF-8');
    $t = strtr($t, ['á'=>'a','é'=>'e','í'=>'i','ó'=>'o','ú'=>'u','ü'=>'u','ñ'=>'n']);
    return trim(preg_replace('/[^a-z0-9]+/', ' ', $t));
}

function raiz($p) {
    if (strlen($p) > 4 && preg_match('/[rnld]es$/', $p)) return substr($p, 0, -2);
    if (strlen($p) > 3 && substr($p, -1) === 's') return substr($p, 0, -1);
    return $p;
}


$stop = array_flip(explode(' ',
    'de del la las el los lo un una unos unas y o u e en a al que es son ser por para con sin '.
    'me mi mis tu tus su sus se te si no ya hay tiene tienen tienes tengo tener hacen hace haces '.
    'venden vende ofrecen manejan ustedes usted puedo puedes pueden poder quiero quisiera necesito '.
    'saber como cual cuales cuanto cuanta cuantos cuantas cuando quien hola buenas buenos favor oye '.
    'esta estan estoy mas muy tambien algun alguna algunos algunas otro otra'));

function tokens($texto, $stop) {
    $out = [];
    foreach (explode(' ', normalizar($texto)) as $w) {
        if (strlen($w) < 2 || isset($stop[$w])) continue;
        $out[raiz($w)] = true;
    }
    return array_keys($out);
}

function idf($w, $df, $N) {
    return log(($N + 1) / ((isset($df[$w]) ? $df[$w] : 0) + 0.5));   // palabra rara = pesa más
}


if (preg_match('/^(hola|buenas|buenos dias|buen dia|hey|que tal)\W*$/u', normalizar($mensaje))) {
    exit("¡Hola! 🍦 Bienvenido a Bubbu's Place's. ¿En qué te puedo ayudar?");
}


$res = mysqli_query($conn, "SELECT pregunta, respuesta, palabras_clave FROM faq WHERE activa = 1") or die("Error");
$filas = mysqli_fetch_all($res, MYSQLI_ASSOC);
$N = count($filas);
$df = [];
foreach ($filas as $i => $f) {
    $tp = tokens($f['pregunta'], $stop);
    $tk = tokens(str_replace(',', ' ', (string)$f['palabras_clave']), $stop);
    $filas[$i]['tp'] = array_flip($tp);
    $filas[$i]['tk'] = array_flip($tk);
    foreach (array_unique(array_merge($tp, $tk)) as $w) {
        $df[$w] = (isset($df[$w]) ? $df[$w] : 0) + 1;
    }
}


$palabras = tokens($mensaje, $stop);
$mejor = null;
$mejorScore = 0;

if ($palabras) {
    $totalIdf = 0;
    foreach ($palabras as $w) $totalIdf += idf($w, $df, $N);

    foreach ($filas as $f) {
        $match = 0;
        $score = 0;
        foreach ($palabras as $w) {
            $enK = isset($f['tk'][$w]);
            $enP = isset($f['tp'][$w]);
            if ($enK || $enP) {
                $peso = idf($w, $df, $N);
                $match += $peso;
                $score += $peso * ($enK ? 1.5 : 1);
            }
        }
        $cobertura = $totalIdf > 0 ? $match / $totalIdf : 0;
        if ($cobertura >= 0.4 && $score > $mejorScore) {
            $mejorScore = $score;
            $mejor = $f;
        }
    }
}


if ($mejor) {
    echo $mejor['respuesta'];
} else {

    $stmt = mysqli_prepare($conn, "INSERT INTO preguntas_sin_respuesta (texto) VALUES (?)");
    $txt = mb_substr($mensaje, 0, 500);
    mysqli_stmt_bind_param($stmt, "s", $txt);
    mysqli_stmt_execute($stmt);

    echo "Lo siento, ¡no puedo ayudarte!<br><a href='https://www.google.com/search?q=" . urlencode($mensaje) . "' target='_blank'>Googléalo</a>";
}
?>
