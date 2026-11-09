<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>bubbu place´s - Heladería</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caprasimo&family=Open+Sans:wght@400;600;700&family=Pacifico&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

   
    <style>
        :root {
            --crema: #fffdd5;
            --borde: #f2c6d9;
            --rosa: #ef98d8;
            --magenta: #dc3f78;
            --amarillo: #fff3a3;
            --texto: #4a4a4a;
        }
        * { box-sizing: border-box; }
        html { scroll-behavior: smooth; }
        body {
            margin: 0;
            font-family: 'Open Sans', Arial, sans-serif;
            color: var(--texto);
            background: #fff;
        }
        img { max-width: 100%; }
        a:focus-visible, button:focus-visible, input:focus-visible { outline: 3px solid var(--magenta); outline-offset: 3px; }


        .hero {
            position: relative;
            overflow: hidden;
            padding: 300px 20px 100px;
            background-color: #fff;
            background-image:
                url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='360' height='360'%3E%3Cg%3E%3Cpolygon points='11,0 13.9,7.6 22,8.4 15.8,13.9 17.8,22 11,17.6 4.2,22 6.2,13.9 0,8.4 8.1,7.6' transform='translate(40,60)' fill='%23ff6fa5'/%3E%3Cpolygon points='11,0 13.9,7.6 22,8.4 15.8,13.9 17.8,22 11,17.6 4.2,22 6.2,13.9 0,8.4 8.1,7.6' transform='translate(200,30)' fill='%234fc3f7'/%3E%3Cpolygon points='11,0 13.9,7.6 22,8.4 15.8,13.9 17.8,22 11,17.6 4.2,22 6.2,13.9 0,8.4 8.1,7.6' transform='translate(300,140)' fill='%23f9b4cd'/%3E%3Cpolygon points='11,0 13.9,7.6 22,8.4 15.8,13.9 17.8,22 11,17.6 4.2,22 6.2,13.9 0,8.4 8.1,7.6' transform='translate(110,200)' fill='%234fc3f7'/%3E%3Cpolygon points='11,0 13.9,7.6 22,8.4 15.8,13.9 17.8,22 11,17.6 4.2,22 6.2,13.9 0,8.4 8.1,7.6' transform='translate(260,260)' fill='%23ff6fa5'/%3E%3Cpolygon points='11,0 13.9,7.6 22,8.4 15.8,13.9 17.8,22 11,17.6 4.2,22 6.2,13.9 0,8.4 8.1,7.6' transform='translate(30,310)' fill='%23f9b4cd'/%3E%3Cpolygon points='11,0 13.9,7.6 22,8.4 15.8,13.9 17.8,22 11,17.6 4.2,22 6.2,13.9 0,8.4 8.1,7.6' transform='translate(330,320)' fill='%234fc3f7'/%3E%3Cpolygon points='11,0 13.9,7.6 22,8.4 15.8,13.9 17.8,22 11,17.6 4.2,22 6.2,13.9 0,8.4 8.1,7.6' transform='translate(150,320)' fill='%23f9b4cd'/%3E%3C/g%3E%3C/svg%3E"),
                repeating-linear-gradient(90deg, #ffffff 0 56px, #ffebef 56px 112px);
        }

        /* Glaseado con chispas que gotea desde arriba */
        .goteo {
            position: absolute; top: 0; left: 0; right: 0; height: 200px; z-index: 3; pointer-events: none;
            background: url("goteo.png") repeat-x 0 0 / auto 200px;
        }

        .menu-nav {
            position: absolute; top: 222px; left: 50%; transform: translateX(-50%); z-index: 4;
            display: flex; gap: 6px; padding: 6px; background: var(--crema);
            border: 4px solid var(--borde); border-radius: 999px;
        }
        .menu-nav a {
            padding: 8px 20px; border-radius: 999px; color: var(--magenta);
            text-decoration: none; font-weight: 700; font-size: 15px;
        }
        .menu-nav a:hover { background: var(--borde); }

        .hero-contenido {
            position: relative; z-index: 2; max-width: 1100px; margin: 0 auto;
            display: flex; align-items: center; justify-content: center; gap: 60px;
        }
        .titulo-bloque { position: relative; text-align: center; }
        .estrella { position: absolute; width: 190px; left: -120px; top: -50px; z-index: 0; }

        .logo {
            position: relative; z-index: 1; margin: 0;
            font-family: 'Caprasimo', 'Cooper Black', Georgia, serif; font-weight: 400;
            font-size: clamp(64px, 11vw, 132px); line-height: .98;
            color: var(--rosa);
            -webkit-text-stroke: 12px var(--amarillo);
            paint-order: stroke fill;
            letter-spacing: 1px;
        }
        .logo span { display: block; }

        .lema {
            position: relative; z-index: 1; margin: 22px 0 22px;
            font-size: 20px; font-weight: 700; color: var(--magenta);
        }
        .botones { position: relative; z-index: 1; display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; }
        .btn {
            border: 3px solid var(--amarillo); border-radius: 999px; background: var(--rosa); color: #fff;
            padding: 12px 26px; font: inherit; font-weight: 700; font-size: 16px; cursor: pointer; text-decoration: none;
            text-shadow: 0 1px 2px rgba(150, 40, 110, .45); box-shadow: 0 4px 0 #d77fc0;
        }
        .btn:hover { background: #e583cb; }
        .btn-claro { background: var(--crema); color: var(--magenta); text-shadow: none; border-color: var(--borde); box-shadow: 0 4px 0 #e5adc6; }
        .btn-claro:hover { background: #fff7b5; }

        .visual { position: relative; width: 340px; height: 430px; flex: none; }
        .visual .burst { position: absolute; right: -40px; top: 10px; width: 330px; transform: rotate(6deg); }
        .visual .cono { position: absolute; left: 0; bottom: 0; width: 190px; filter: drop-shadow(0 8px 8px rgba(120, 60, 90, .25)); }

        .sabores {
            position: relative; padding: 80px 20px 110px;
            background: repeating-linear-gradient(90deg, #fde8f9 0 18px, #f4cadf 18px 34px);
        }
        .etiqueta {
            position: relative; width: min(640px, 94%); aspect-ratio: 701 / 238; margin: 0 auto 70px;
            background: url("etiqueta.png") center / 100% 100% no-repeat;
            display: flex; align-items: center; justify-content: center;
        }
        .etiqueta.corta { width: min(430px, 94%); }
        .etiqueta .flor { position: absolute; left: -34px; top: 22px; width: 100px; }
        .titulo-script {
            margin: 0; font-family: 'Pacifico', cursive; font-weight: 400;
            font-size: clamp(30px, 6vw, 62px); line-height: 1.1; text-align: center;
            color: #f9c1da; -webkit-text-stroke: 7px var(--magenta); paint-order: stroke fill;
        }

        .carta { max-width: 980px; margin: 0 auto; display: flex; flex-direction: column; gap: 70px; }
        .fila { display: flex; align-items: center; justify-content: center; gap: 36px; }
        .fila.der { flex-direction: row-reverse; }
        .foto { flex: none; filter: drop-shadow(0 8px 8px rgba(120, 60, 90, .22)); }
        .foto-cono { width: 160px; }
        .foto-canasta { width: 270px; }
        .foto-malteada { width: 140px; }

        .tarjeta {
            position: relative; flex: 1 1 380px; max-width: 540px;
            background: var(--crema); border: 6px solid var(--borde); border-radius: 44px;
            padding: 30px 36px 30px 52px;
        }
        .tarjeta h3 {
            margin: 0 0 8px; font-family: 'Pacifico', cursive; font-weight: 400;
            font-size: 28px; color: var(--magenta);
        }
        .tarjeta ul { margin: 0; padding-left: 22px; }
        .tarjeta li { font-size: 21px; line-height: 1.75; }
        .tarjeta li::marker { color: var(--rosa); }
        .tarjeta p { margin: 4px 0; font-size: 18px; line-height: 1.5; }
        .cinta { position: absolute; top: -44px; width: 150px; pointer-events: none; }
        .izq .cinta { right: -36px; transform: rotate(-6deg); }
        .der .cinta { left: -52px; top: -80px; width: 120px; transform: rotate(8deg); }

        .visitanos {
            position: relative; padding: 90px 20px 80px;
            background-color: #fff8c1;
            background-image:
                radial-gradient(circle, #f8c6c5 0 14px, transparent 15px),
                radial-gradient(circle, #f8c6c5 0 14px, transparent 15px);
            background-size: 112px 112px;
            background-position: 0 0, 56px 56px;
        }
        .visitanos::before {      
            content: ""; position: absolute; top: 0; left: 0; right: 0; height: 14px;
            background: radial-gradient(circle at 10px 0, #fff 9px, transparent 10px) 0 0 / 20px 14px repeat-x;
        }
        .info { max-width: 1000px; margin: 0 auto; display: grid; grid-template-columns: repeat(auto-fit, minmax(260px, 1fr)); gap: 44px 28px; }
        .info .tarjeta { max-width: none; padding: 30px 28px; }
        .info .cinta { right: -20px; transform: rotate(-6deg); width: 120px; top: -36px; }
        .cierre { text-align: center; margin-top: 56px; }

        footer {
            text-align: center; padding: 28px 20px 96px; background: var(--borde);
            color: #8a2c55; font-weight: 600;
        }

        #chat-btn {
            position: fixed; right: 22px; bottom: 22px; width: 78px; height: 78px; border-radius: 50%; z-index: 50;
            background: var(--crema); border: 5px solid var(--borde); cursor: pointer; padding: 0;
            display: flex; align-items: center; justify-content: center;
            box-shadow: 0 6px 16px rgba(220, 63, 120, .35); transition: transform .2s;
        }
        #chat-btn img { height: 54px; width: auto; }
        #chat-btn:hover { transform: scale(1.08); }
        #globo {
            position: fixed; right: 112px; bottom: 40px; z-index: 50; background: var(--crema);
            border: 3px solid var(--borde); color: var(--magenta); font-weight: 700; font-size: 14px;
            padding: 10px 14px; border-radius: 18px 18px 4px 18px;
        }
        #chat-panel {
            position: fixed; right: 22px; bottom: 112px; width: 370px; max-width: calc(100vw - 24px);
            height: 510px; max-height: calc(100vh - 130px); z-index: 50;
            background: var(--crema); border: 5px solid var(--borde); border-radius: 30px; overflow: hidden;
            box-shadow: 0 14px 34px rgba(220, 63, 120, .3);
            display: flex; flex-direction: column;
            transform-origin: bottom right; transform: scale(.6); opacity: 0; pointer-events: none;
            transition: transform .25s ease, opacity .25s ease;
        }
        #chat-panel.abierto { transform: scale(1); opacity: 1; pointer-events: auto; }
        .chat-top {
            background: var(--rosa); color: #fff; padding: 12px 18px; display: flex; justify-content: space-between; align-items: center;
            font-family: 'Caprasimo', Georgia, serif; font-size: 22px; text-shadow: 0 2px 0 rgba(180, 60, 140, .4);
        }
        .chat-top button { background: none; border: 0; color: #fff; font-size: 22px; cursor: pointer; }

        .form { flex: 1; overflow-y: auto; display: flex; flex-direction: column; gap: 10px; padding: 14px 12px; scrollbar-width: thin; scrollbar-color: var(--borde) transparent; }
        .inbox { display: flex; align-items: flex-end; gap: 8px; max-width: 90%; }
        .bot-inbox { align-self: flex-start; }
        .user-inbox { align-self: flex-end; }
        .icon { width: 34px; height: 34px; flex: none; border-radius: 50%; background: #fff; border: 2px solid var(--borde); display: flex; align-items: center; justify-content: center; overflow: hidden; }
        .icon img { height: 26px; width: auto; }
        .msg-header p { margin: 0; padding: 10px 14px; border-radius: 18px; font-size: 15px; line-height: 1.4; overflow-wrap: anywhere; }
        .bot-inbox .msg-header p { background: #fff; border: 2px solid var(--borde); border-bottom-left-radius: 5px; }
        .user-inbox .msg-header p { background: var(--rosa); color: #fff; border-bottom-right-radius: 5px; }
        .bot-inbox a { color: var(--magenta); font-weight: 700; }

        .typing-field { padding: 10px 12px 14px; }
        .input-data { display: flex; gap: 8px; }
        #data { flex: 1; min-width: 0; border: 3px solid var(--borde); background: #fff; border-radius: 25px; padding: 10px 16px; font: inherit; font-size: 15px; }
        #send-btn { border: 0; border-radius: 25px; background: var(--rosa); color: #fff; padding: 0 20px; font: inherit; font-weight: 700; cursor: pointer; }
        #send-btn:hover { background: #e583cb; }

      
        @media (max-width: 820px) {
            .hero { padding-top: 230px; padding-bottom: 70px; }
            .goteo { height: 140px; background-size: auto 140px; }
            .menu-nav { top: 158px; }
            .menu-nav a { padding: 7px 13px; font-size: 14px; }
            .hero-contenido { flex-direction: column; gap: 24px; }
            .estrella { width: 120px; left: -40px; top: -40px; }
            .logo { -webkit-text-stroke-width: 9px; font-size: clamp(76px, 22vw, 110px); }
            .etiqueta { margin-bottom: 50px; }
            .etiqueta .flor { width: 64px; left: -10px; top: 34px; }
            .titulo-script { font-size: 28px; -webkit-text-stroke-width: 5px; padding-left: 34px; }
            .etiqueta.corta .titulo-script { padding-left: 24px; }
            .visual { width: 280px; height: 360px; }
            .visual .burst { width: 270px; right: -10px; }
            .visual .cono { width: 160px; left: 20px; }
            .fila, .fila.der { flex-direction: column; gap: 20px; }
            .foto-cono { width: 120px; } .foto-canasta { width: 210px; } .foto-malteada { width: 100px; }
            .tarjeta { flex-basis: auto; width: 100%; padding: 26px 22px 26px 38px; }
            .tarjeta li { font-size: 19px; }
            .izq .cinta, .der .cinta { right: -8px; left: auto; width: 110px; top: -34px; transform: rotate(-6deg); }
            #globo { display: none; }
            #chat-panel { right: 12px; bottom: 108px; }
        }
        @media (prefers-reduced-motion: reduce) {
            html { scroll-behavior: auto; }
            #chat-panel, #chat-btn { transition: none; }
        }
    </style>
</head>
<body>


    <header class="hero">
        <div class="goteo" aria-hidden="true"></div>

        <nav class="menu-nav" aria-label="Menú principal">
            <a href="#sabores">Sabores</a>
            <a href="#visitanos">Visítanos</a>
            <a href="#" id="nav-chat">Preguntar</a>
        </nav>

        <div class="hero-contenido">
            <div class="titulo-bloque">
                <img class="estrella" src="estrella.png" alt="" aria-hidden="true">
                <h1 class="logo"><span>bubbu</span><span>place´s</span></h1>
                <p class="lema">Helados, malteadas y mucho sabor</p>
                <div class="botones">
                    <a class="btn" href="#sabores">Ver sabores</a>
                    <button class="btn btn-claro" id="abrir-chat">Pregúntale a Bubbu</button>
                </div>
            </div>

            <div class="visual" aria-hidden="true">
                <img class="burst" src="burst.png" alt="">
                <img class="cono" src="cono-algodon.png" alt="">
            </div>
        </div>
    </header>


    <section class="sabores" id="sabores">
        <div class="etiqueta">
            <img class="flor" src="flor.png" alt="" aria-hidden="true">
            <h2 class="titulo-script">Sabores de la Casa</h2>
        </div>

        <div class="carta">
            <article class="fila izq">
                <img class="foto foto-cono" src="cono-fresa.png" alt="Cono de helado de fresa">
                <div class="tarjeta">
                    <img class="cinta" src="cinta.png" alt="" aria-hidden="true">
                    <h3>Helados en cono</h3>
                    <ul>
                        <li>Fresa</li>
                        <li>Vainilla</li>
                        <li>Chocolate</li>
                        <li>Dulce de leche</li>
                        <li>Cookies &amp; Cream</li>
                    </ul>
                </div>
            </article>

            <article class="fila der">
                <img class="foto foto-canasta" src="canasta.png" alt="Canasta de waffle con helado, frutos rojos y menta">
                <div class="tarjeta">
                    <img class="cinta" src="cinta.png" alt="" aria-hidden="true">
                    <h3>Canasta de waffle</h3>
                    <ul>
                        <li>Oreo</li>
                        <li>Menta</li>
                        <li>Brownie</li>
                        <li>Maracuyá</li>
                        <li>Frutos rojos</li>
                    </ul>
                </div>
            </article>

            <article class="fila izq">
                <img class="foto foto-malteada" src="malteada.png" alt="Malteada de fresa con crema y cerezas">
                <div class="tarjeta">
                    <img class="cinta" src="cinta.png" alt="" aria-hidden="true">
                    <h3>Malteadas</h3>
                    <ul>
                        <li>Fresa con crema</li>
                        <li>Chocolate</li>
                        <li>Oreo</li>
                        <li>Vainilla con caramelo</li>
                        <li>Mazapán</li>
                    </ul>
                </div>
            </article>
        </div>
    </section>

   }
    <section class="visitanos" id="visitanos">
        <div class="etiqueta corta">
            <img class="flor" src="flor.png" alt="" aria-hidden="true">
            <h2 class="titulo-script">Visítanos</h2>
        </div>

        <div class="info">
            <div class="tarjeta">
                <img class="cinta" src="cinta.png" alt="" aria-hidden="true">
                <h3>Horario</h3>
                <p>Domingo a jueves: 11:00 a.m. a 10:00 p.m.</p>
                <p>Viernes y sábado: 11:00 a.m. a 11:00 p.m.</p>
            </div>
            <div class="tarjeta">
                <img class="cinta" src="cinta.png" alt="" aria-hidden="true">
                <h3>Dónde estamos</h3>
                <p>Calle venustiano carranza 129, Col. Centro</p>
                <p>Terraza pet friendly y estacionamiento.</p>
            </div>
            <div class="tarjeta">
                <img class="cinta" src="cinta.png" alt="" aria-hidden="true">
                <h3>Contacto</h3>
                <p>WhatsApp: 444 000 0000</p>
                <p>contacto@bubbusplaces.com</p>
            </div>
        </div>

        <div class="cierre">
            <button class="btn" id="abrir-chat-2">¿Dudas? Pregúntale a Bubbu</button>
        </div>
    </section>

    <footer>© bubbu place´s · Hecho con mucho cariño</footer>

    <div id="globo">¿Dudas? ¡Pregúntame!</div>
    <button id="chat-btn" aria-label="Abrir chat"><img src="cono-algodon.png" alt=""></button>

    <div id="chat-panel" role="dialog" aria-label="Chat de bubbu place´s">
        <div class="chat-top">
            <span>bubbu place´s</span>
            <button id="cerrar-chat" aria-label="Cerrar chat">✕</button>
        </div>
        <div class="form">
            <div class="bot-inbox inbox">
                <div class="icon"><img src="cono-algodon.png" alt=""></div>
                <div class="msg-header">
                    <p>¡Hola! Bienvenido a <span style="white-space:nowrap">bubbu place´s</span>. ¿En qué te puedo ayudar?</p>
                </div>
            </div>
        </div>
        <div class="typing-field">
            <div class="input-data">
                <input id="data" type="text" placeholder="Escribe tu pregunta..." autocomplete="off" required>
                <button id="send-btn">Enviar</button>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {

            function abrir() {
                $("#chat-panel").addClass("abierto");
                $("#globo").hide();
                setTimeout(function() { $("#data").focus(); }, 250);
            }
            function cerrar() {
                $("#chat-panel").removeClass("abierto");
            }
            $("#chat-btn").on("click", function() {
                if ($("#chat-panel").hasClass("abierto")) { cerrar(); } else { abrir(); }
            });
            $("#abrir-chat, #abrir-chat-2").on("click", abrir);
            $("#nav-chat").on("click", function(e) { e.preventDefault(); abrir(); });
            $("#cerrar-chat").on("click", cerrar);
            $(document).on("keydown", function(e) { if (e.key === "Escape") cerrar(); });

           
            var avatar = '<div class="icon"><img src="cono-algodon.png" alt=""></div>';

            function bajar() {
                $(".form").scrollTop($(".form")[0].scrollHeight);
            }

            function enviar() {
                var value = $("#data").val().trim();
                if (value === '') return;

                var $userMsg = $('<div class="user-inbox inbox"><div class="msg-header"><p></p></div></div>');
                $userMsg.find('p').text(value);          // .text() evita que se inyecte HTML
                $(".form").append($userMsg);
                $("#data").val('');
                bajar();

                $.ajax({
                    url: 'message.php',
                    type: 'POST',
                    data: { text: value },
                    success: function(result) {
                        var $reply = $('<div class="bot-inbox inbox">' + avatar + '<div class="msg-header"><p></p></div></div>');
                        $reply.find('p').html(result); 
                        $(".form").append($reply);
                        bajar();
                    },
                    error: function() {
                        var $err = $('<div class="bot-inbox inbox">' + avatar + '<div class="msg-header"><p>Ups, hubo un problema de conexión.</p></div></div>');
                        $(".form").append($err);
                        bajar();
                    }
                });
            }

            $("#send-btn").on("click", enviar);
            $("#data").on("keydown", function(e) {
                if (e.key === "Enter") enviar();
            });
        });
    </script>
</body>
</html>
