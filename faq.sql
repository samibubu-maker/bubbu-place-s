-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2026 at 07:02 AM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `categoria` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pregunta` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `respuesta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `palabras_clave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activa` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `categoria`, `pregunta`, `respuesta`, `palabras_clave`, `activa`) VALUES
(1, 'Horarios', '¿A qué hora abren?', 'Abrimos todos los días a las 11:00 a.m.', 'abren,apertura,hora,abierto', 1),
(2, 'Horarios', '¿A qué hora cierran?', 'Cerramos a las 10:00 p.m. de domingo a jueves y a las 11:00 p.m. viernes y sábado.', 'cierran,cierre,hora', 1),
(3, 'Horarios', '¿Abren los domingos?', 'Sí, en Bubbu\'s Place\'s abrimos todos los días de la semana, incluidos los domingos.', 'domingo,abren,fin de semana', 1),
(4, 'Horarios', '¿Abren en días festivos?', 'Abrimos en la mayoría de los días festivos. En Navidad y Año Nuevo el horario puede reducirse, avisamos en nuestras redes.', 'festivos,feriado,navidad,año nuevo', 1),
(5, 'Horarios', '¿Cuál es el horario de atención?', 'Domingo a jueves de 11:00 a.m. a 10:00 p.m. y viernes y sábado de 11:00 a.m. a 11:00 p.m.', 'horario,atención,días', 1),
(6, 'Horarios', '¿Están abiertos ahorita?', 'Nuestro horario es de 11:00 a.m. a 10:00 p.m. (hasta las 11:00 p.m. viernes y sábado). Si tienes duda, llámanos y te confirmamos.', 'ahorita,ahora,abierto', 1),
(7, 'Horarios', '¿Cuál es la mejor hora para ir sin filas?', 'Entre semana de 11:00 a.m. a 2:00 p.m. suele haber menos gente. Los fines de semana por la tarde-noche hay más afluencia.', 'filas,fila,lleno,tranquilo', 1),
(8, 'Horarios', '¿Tienen horario especial en verano?', 'Sí, en temporada de calor extendemos el horario. Los cambios se anuncian en nuestras redes sociales.', 'verano,calor,temporada,horario especial', 1),
(9, 'Ubicación', '¿Dónde están ubicados?', 'Estamos en Calle Ejemplo 123, Col. Centro. Te esperamos en Bubbu\'s Place\'s.', 'dónde,ubicación,dirección,donde estan', 1),
(10, 'Ubicación', '¿Cuántas sucursales tienen?', 'Por ahora contamos con una sucursal principal. Estamos planeando abrir más, síguenos para enterarte.', 'sucursales,sucursal,tiendas', 1),
(11, 'Ubicación', '¿Tienen estacionamiento?', 'Contamos con lugares de estacionamiento frente al local y hay estacionamiento público a media cuadra.', 'estacionamiento,parking,carro,auto', 1),
(12, 'Ubicación', '¿Cómo llego en transporte público?', 'Pasan varias rutas de camión a una cuadra del local. Dinos desde dónde sales y te orientamos.', 'transporte,camión,ruta,llegar', 1),
(13, 'Ubicación', '¿Hay algún punto de referencia cerca?', 'Estamos a un costado de la plaza principal de la colonia, es fácil de encontrar por nuestro letrero rosa.', 'referencia,cerca,plaza,cómo llegar', 1),
(14, 'Ubicación', '¿Tienen módulo en plazas comerciales?', 'Por el momento no, solo estamos en nuestro local. Cualquier cambio lo anunciamos en redes.', 'módulo,plaza,centro comercial', 1),
(15, 'Ubicación', '¿Tienen servicio a domicilio en mi colonia?', 'Entregamos en un radio de 5 km alrededor del local. Dinos tu colonia y confirmamos si te llegamos.', 'colonia,cobertura,zona,domicilio', 1),
(16, 'Sabores', '¿Qué sabores tienen?', 'Tenemos vainilla, chocolate, fresa, limón, mango, queso, pistache, galleta, café y más. Los sabores de temporada cambian cada mes.', 'sabores,variedad,opciones,menú', 1),
(17, 'Sabores', '¿Cuáles son los sabores más vendidos?', 'Los favoritos son galleta con chocolate, fresa con crema, mango con chile y vainilla.', 'más vendidos,favoritos,populares,recomendado', 1),
(18, 'Sabores', '¿Tienen helado de vainilla?', 'Sí, nuestra vainilla es cremosa y se prepara con vainilla natural.', 'vainilla', 1),
(19, 'Sabores', '¿Tienen helado de chocolate?', 'Sí, tenemos chocolate clásico y chocolate amargo.', 'chocolate,cacao', 1),
(20, 'Sabores', '¿Tienen helado de fresa?', 'Sí, el de fresa se prepara con fruta de temporada.', 'fresa', 1),
(21, 'Sabores', '¿Tienen helado de limón?', 'Sí, tenemos nieve de limón, muy refrescante y sin lácteos.', 'limón,limon,nieve', 1),
(22, 'Sabores', '¿Tienen helado de queso?', 'Sí, el helado de queso es uno de los favoritos de la casa.', 'queso', 1),
(23, 'Sabores', '¿Tienen helado de pistache?', 'Sí, tenemos pistache con trocitos de nuez.', 'pistache,pistacho', 1),
(24, 'Sabores', '¿Tienen helado de galleta?', 'Sí, el de galleta con trozos crujientes es de los más pedidos.', 'galleta,oreo,cookies', 1),
(25, 'Sabores', '¿Tienen helado de mango?', 'Sí, y lo puedes pedir con chile en polvo si te gusta el toque picosito.', 'mango,chile', 1),
(26, 'Sabores', '¿Tienen helado sabor café?', 'Sí, tenemos helado de café para los amantes del café.', 'café,cafe', 1),
(27, 'Sabores', '¿Tienen sabores de temporada?', 'Sí, cada mes lanzamos uno o dos sabores nuevos de temporada. Consulta nuestras redes para ver el del mes.', 'temporada,nuevo,mes,especial', 1),
(28, 'Sabores', '¿Puedo probar un sabor antes de comprar?', 'Claro, con gusto te damos a probar una cucharadita de cualquier sabor.', 'probar,muestra,degustar', 1),
(29, 'Sabores', '¿Cada cuánto cambian los sabores?', 'Los sabores base son fijos y los de temporada cambian cada mes.', 'cambian,rotación,nuevos', 1),
(30, 'Precios', '¿Cuánto cuesta una bola de helado?', 'Una bola de helado cuesta $35 MXN.', 'precio,bola,cuánto cuesta,costo', 1),
(31, 'Precios', '¿Cuánto cuesta un cono doble?', 'El cono doble cuesta $60 MXN.', 'cono,doble,precio', 1),
(32, 'Precios', '¿Cuánto cuesta un litro de helado?', 'El litro cuesta $190 MXN y puedes elegir hasta 2 sabores.', 'litro,precio,helado', 1),
(33, 'Precios', '¿Venden medio litro?', 'Sí, el medio litro cuesta $110 MXN y puedes elegir un sabor.', 'medio litro,1/2 litro,precio', 1),
(34, 'Precios', '¿Qué es el Bubbu Sundae?', 'Es nuestra copa especial con 3 bolas, salsa, crema batida, cereza y galleta. Cuesta $85 MXN.', 'sundae,copa,especial', 1),
(35, 'Precios', '¿Venden malteadas?', 'Sí, tenemos malteadas de vainilla, chocolate y fresa por $75 MXN.', 'malteada,licuado,batido', 1),
(36, 'Precios', '¿Venden paletas?', 'Sí, tenemos paletas de crema y de agua desde $30 MXN.', 'paleta,paletas', 1),
(37, 'Precios', '¿Qué tipos de cono tienen?', 'Tenemos cono de barquillo, cono de waffle y vasito. El cono de waffle tiene un costo extra de $10 MXN.', 'cono,waffle,barquillo,vasito', 1),
(38, 'Precios', '¿Tienen banana split?', 'Sí, nuestra banana split cuesta $95 MXN y lleva 3 sabores, plátano, salsas y crema.', 'banana split,plátano', 1),
(39, 'Precios', '¿Venden café o bebidas calientes?', 'Sí, tenemos café americano, capuchino y chocolate caliente desde $35 MXN.', 'café,bebidas,chocolate caliente,capuchino', 1),
(40, 'Precios', '¿Cuánto cuestan los toppings extra?', 'Cada topping extra cuesta $10 MXN.', 'toppings,extra,costo', 1),
(41, 'Precios', '¿Qué toppings tienen?', 'Chispas de chocolate, grageas, nuez, cacahuate, galleta triturada, malvaviscos, coco rallado y salsas de chocolate, fresa y caramelo.', 'toppings,complementos,salsas,chispas', 1),
(42, 'Precios', '¿Venden pasteles de helado?', 'Sí, hacemos pasteles de helado de varios sabores. Se piden con anticipación.', 'pastel,pasteles,tarta,helado', 1),
(43, 'Precios', '¿Cuánto cuesta un pastel de helado?', 'Los pasteles de helado inician en $350 MXN para 8 porciones. El precio varía según el diseño y los sabores.', 'pastel,precio,costo,porciones', 1),
(44, 'Opciones especiales', '¿Tienen helado vegano?', 'Sí, tenemos nieves a base de agua y opciones veganas con leche de coco. Pregunta por los sabores disponibles del día.', 'vegano,vegana,sin leche,plant based', 1),
(45, 'Opciones especiales', '¿Tienen helado sin azúcar?', 'Contamos con algunos sabores sin azúcar añadida. Pregunta por ellos en mostrador.', 'sin azúcar,diabético,light', 1),
(46, 'Opciones especiales', '¿Tienen helado sin lactosa?', 'Sí, nuestras nieves de fruta y las opciones con leche de coco no llevan lactosa.', 'sin lactosa,lactosa,intolerante', 1),
(47, 'Opciones especiales', '¿Tienen opciones sin gluten?', 'Muchos sabores no llevan gluten, pero los que incluyen galleta o cono sí. Pide tu helado en vasito y consulta los ingredientes.', 'sin gluten,celíaco,celiaco,gluten', 1),
(48, 'Opciones especiales', '¿Qué sabores contienen nueces o cacahuate?', 'Pistache, nuez y los de temporada con frutos secos pueden contener nueces. Si tienes alergia, avísanos antes de pedir.', 'nuez,cacahuate,alergia,frutos secos', 1),
(49, 'Opciones especiales', '¿Sus productos tienen alérgenos?', 'Manejamos leche, huevo, gluten, nueces y cacahuate en nuestras instalaciones. Consulta con nosotros si tienes alguna alergia.', 'alérgenos,alergias,alergia', 1),
(50, 'Opciones especiales', '¿Tienen helado para niños con menos azúcar?', 'Sí, tenemos la opción Bubbu Kids, con porción pequeña y menos azúcar, por $25 MXN.', 'niños,infantil,menos azúcar,kids', 1),
(51, 'Opciones especiales', '¿Tienen helado para mascotas?', 'Sí, tenemos un helado especial para perritos a base de yogurt natural y plátano, sin azúcar. Cuesta $30 MXN.', 'mascotas,perro,perritos,helado para perros', 1),
(52, 'Opciones especiales', '¿Tienen opciones bajas en calorías?', 'Nuestras nieves de fruta son la opción más ligera. Pregunta por el yogurt helado.', 'calorías,light,dieta,ligero', 1),
(53, 'Opciones especiales', '¿Usan ingredientes naturales?', 'Sí, usamos fruta natural y leche fresca. Evitamos colorantes artificiales en la mayoría de nuestros sabores.', 'natural,ingredientes,fruta', 1),
(54, 'Pedidos', '¿Hacen entregas a domicilio?', 'Sí, entregamos a domicilio dentro de nuestra zona de cobertura.', 'domicilio,entrega,envío,delivery', 1),
(55, 'Pedidos', '¿Cuánto cuesta el envío?', 'El envío cuesta $30 MXN dentro de 5 km. Gratis en pedidos mayores a $300 MXN.', 'envío,costo,delivery,gratis', 1),
(56, 'Pedidos', '¿Cuánto tarda en llegar mi pedido?', 'Normalmente de 30 a 45 minutos, según la distancia y la hora.', 'tiempo,tarda,demora,llega', 1),
(57, 'Pedidos', '¿Cuál es el pedido mínimo a domicilio?', 'El pedido mínimo es de $100 MXN.', 'mínimo,pedido mínimo,domicilio', 1),
(58, 'Pedidos', '¿Cómo hago un pedido?', 'Puedes pedir por WhatsApp, por teléfono, o directamente aquí en el chat. Dime qué quieres y te ayudo.', 'pedido,pedir,ordenar,comprar', 1),
(59, 'Pedidos', '¿Puedo pedir por WhatsApp?', 'Sí, mándanos mensaje al 444 000 0000 con tu pedido y dirección.', 'whatsapp,mensaje,pedido', 1),
(60, 'Pedidos', '¿Puedo apartar mi pedido para recogerlo?', 'Sí, haz tu pedido y pasas por él al local sin hacer fila. Te avisamos cuando esté listo.', 'apartar,recoger,pasar por,pickup', 1),
(61, 'Pedidos', '¿El helado llega derretido?', 'No, lo enviamos en empaque térmico con hielo seco para que llegue en perfectas condiciones.', 'derretido,empaque,llega frío', 1),
(62, 'Pedidos', '¿Trabajan con aplicaciones de reparto?', 'Sí, estamos disponibles en las principales apps de reparto. También puedes pedir directo con nosotros para mejores precios.', 'apps,uber eats,rappi,didi food', 1),
(63, 'Pedidos', '¿Puedo cancelar mi pedido?', 'Sí, puedes cancelar sin costo antes de que comencemos a prepararlo. Avísanos lo antes posible.', 'cancelar,cambiar pedido,anular', 1),
(64, 'Pagos', '¿Qué formas de pago aceptan?', 'Aceptamos efectivo, tarjetas de débito y crédito y transferencias.', 'pago,formas de pago,métodos', 1),
(65, 'Pagos', '¿Aceptan tarjeta?', 'Sí, aceptamos tarjetas de débito y crédito Visa y Mastercard.', 'tarjeta,débito,crédito,visa,mastercard', 1),
(66, 'Pagos', '¿Aceptan transferencias?', 'Sí, te damos nuestros datos para que hagas tu transferencia y nos mandes el comprobante.', 'transferencia,spei,depósito', 1),
(67, 'Pagos', '¿Dan factura?', 'Sí, solicítala el mismo día de tu compra con tus datos fiscales.', 'factura,fiscal,rfc', 1),
(68, 'Pagos', '¿Aceptan dólares?', 'Por el momento solo aceptamos pesos mexicanos.', 'dólares,dolares,moneda', 1),
(69, 'Pagos', '¿Es obligatoria la propina?', 'No es obligatoria, es voluntaria y se agradece mucho.', 'propina,tip', 1),
(70, 'Promociones', '¿Tienen promociones?', 'Sí, tenemos promociones semanales. Consulta nuestras redes o pregunta en mostrador.', 'promoción,promociones,ofertas,descuento', 1),
(71, 'Promociones', '¿Tienen descuento para estudiantes?', 'Sí, 10% de descuento presentando tu credencial vigente de lunes a jueves.', 'estudiante,descuento,credencial', 1),
(72, 'Promociones', '¿Tienen descuento por cumpleaños?', 'Sí, en tu cumpleaños te regalamos una bola de helado presentando tu identificación.', 'cumpleaños,regalo,gratis', 1),
(73, 'Promociones', '¿Tienen tarjeta de lealtad?', 'Sí, por cada 10 compras te regalamos un helado. Pide tu tarjeta en mostrador.', 'lealtad,tarjeta,puntos,sellos', 1),
(74, 'Promociones', '¿Hay promoción 2x1?', 'Tenemos 2x1 en bolas de helado los miércoles. Revisa que siga vigente en nuestras redes.', '2x1,miércoles,dos por uno', 1),
(75, 'Promociones', '¿Tienen descuentos por compras al mayoreo?', 'Sí, en pedidos de 5 litros o más hay precio especial. Pide tu cotización.', 'mayoreo,descuento,volumen,cotización', 1),
(76, 'Promociones', '¿Tienen cupones?', 'Algunas veces compartimos cupones en nuestras redes sociales. Síguenos para no perdértelos.', 'cupón,cupones,código', 1),
(77, 'Promociones', '¿Cómo me entero de las promociones?', 'Siguiéndonos en nuestras redes sociales o preguntando aquí en el chat.', 'enterar,promos,redes', 1),
(78, 'Eventos', '¿Hacen fiestas de cumpleaños?', 'Sí, tenemos paquetes de fiesta con helado, toppings, decoración y personal. Pregunta por disponibilidad.', 'fiesta,cumpleaños,evento,paquete', 1),
(79, 'Eventos', '¿Ofrecen servicio de catering?', 'Sí, llevamos helados a tu evento: bodas, graduaciones y reuniones de empresa.', 'catering,evento,boda,empresa', 1),
(80, 'Eventos', '¿Rentan carrito de helados?', 'Sí, rentamos nuestro carrito con personal incluido para tu evento.', 'carrito,renta,evento', 1),
(81, 'Eventos', '¿Con cuánta anticipación debo reservar un evento?', 'Te recomendamos reservar con al menos 2 semanas de anticipación.', 'reservar,anticipación,fecha', 1),
(82, 'Eventos', '¿Cuánto cuesta el paquete de fiesta?', 'Los paquetes empiezan en $1,500 MXN para 15 personas. Varía según el número de invitados y extras.', 'paquete,fiesta,precio,invitados', 1),
(83, 'Eventos', '¿Puedo pedir un sabor personalizado?', 'Para pedidos grandes podemos preparar un sabor especial. Cuéntanos tu idea y la cotizamos.', 'personalizado,sabor especial,a pedido', 1),
(84, 'Eventos', '¿Hacen pasteles de helado personalizados?', 'Sí, personalizamos pasteles con tu mensaje, tema y sabores favoritos. Se piden con 3 días de anticipación.', 'pastel,personalizado,diseño,mensaje', 1),
(85, 'Eventos', '¿Aceptan reservaciones de mesa?', 'No manejamos reservaciones para uso diario, pero para grupos grandes avísanos con anticipación y te apartamos mesas.', 'reservación,mesa,grupo,apartar', 1),
(86, 'Establecimiento', '¿Tienen wifi?', 'Sí, ofrecemos wifi gratis para nuestros clientes. Pide la contraseña en mostrador.', 'wifi,internet,contraseña', 1),
(87, 'Establecimiento', '¿Aceptan mascotas?', 'Sí, nuestra terraza es pet friendly. Solo pedimos que tu mascota esté con correa.', 'mascotas,perros,pet friendly', 1),
(88, 'Establecimiento', '¿Tienen baños?', 'Sí, contamos con baños para nuestros clientes.', 'baño,baños,sanitarios', 1),
(89, 'Establecimiento', '¿Tienen área para niños?', 'Sí, tenemos una zona infantil con mesitas y juegos.', 'niños,área infantil,juegos', 1),
(90, 'Establecimiento', '¿El local tiene acceso para sillas de ruedas?', 'Sí, nuestro local es de planta baja y cuenta con rampa de acceso.', 'silla de ruedas,accesibilidad,rampa,discapacidad', 1),
(91, 'Establecimiento', '¿Tienen mesas al aire libre?', 'Sí, contamos con terraza con mesas al aire libre.', 'terraza,aire libre,mesas', 1),
(92, 'Establecimiento', '¿Tienen música en vivo o eventos?', 'De vez en cuando organizamos noches de música y eventos especiales. Los anunciamos en redes.', 'música,eventos,show', 1),
(93, 'Establecimiento', '¿Qué medidas de higiene siguen?', 'Nuestro personal usa guantes y cofia, desinfectamos superficies constantemente y los helados se conservan a temperatura controlada.', 'higiene,limpieza,sanidad', 1),
(94, 'Contacto', '¿Cuál es su teléfono?', 'Puedes llamarnos o escribirnos por WhatsApp al 444 000 0000.', 'teléfono,telefono,llamar,contacto', 1),
(95, 'Contacto', '¿Cuál es su correo electrónico?', 'Nuestro correo es contacto@bubbusplaces.com.', 'correo,email,mail', 1),
(96, 'Contacto', '¿Tienen redes sociales?', 'Sí, búscanos como @bubbusplaces en Facebook, Instagram y TikTok.', 'redes,facebook,instagram,tiktok', 1),
(97, 'General', '¿Por qué se llama Bubbu\'s Place\'s?', 'Es el nombre de nuestra heladería, pensado como un lugar divertido para toda la familia donde cada helado es una pequeña celebración.', 'nombre,historia,quiénes son', 1),
(98, 'General', '¿Están contratando personal?', 'Algunas veces abrimos vacantes. Envía tu CV a contacto@bubbusplaces.com o pregunta en el local.', 'empleo,trabajo,vacante,contratando', 1),
(99, 'General', '¿Cómo hago una queja o sugerencia?', 'Nos importa tu opinión. Escríbenos por WhatsApp, correo o díselo al encargado en el local.', 'queja,sugerencia,reclamo,opinión', 1),
(100, 'General', '¿Venden tarjetas de regalo?', 'Sí, tenemos tarjetas de regalo desde $100 MXN. Son un detalle perfecto para cualquier ocasión.', 'tarjeta de regalo,regalo,gift card,cupón', 1),
(101, 'Horarios', '¿A qué hora abren?', 'Abrimos todos los días a las 11:00 a.m.', 'abren,apertura,hora,abierto', 1),
(102, 'Horarios', '¿A qué hora cierran?', 'Cerramos a las 10:00 p.m. de domingo a jueves y a las 11:00 p.m. viernes y sábado.', 'cierran,cierre,hora', 1),
(103, 'Horarios', '¿Abren los domingos?', 'Sí, en Bubbu\'s Place\'s abrimos todos los días de la semana, incluidos los domingos.', 'domingo,abren,fin de semana', 1),
(104, 'Horarios', '¿Abren en días festivos?', 'Abrimos en la mayoría de los días festivos. En Navidad y Año Nuevo el horario puede reducirse, avisamos en nuestras redes.', 'festivos,feriado,navidad,año nuevo', 1),
(105, 'Horarios', '¿Cuál es el horario de atención?', 'Domingo a jueves de 11:00 a.m. a 10:00 p.m. y viernes y sábado de 11:00 a.m. a 11:00 p.m.', 'horario,atención,días', 1),
(106, 'Horarios', '¿Están abiertos ahorita?', 'Nuestro horario es de 11:00 a.m. a 10:00 p.m. (hasta las 11:00 p.m. viernes y sábado). Si tienes duda, llámanos y te confirmamos.', 'ahorita,ahora,abierto', 1),
(107, 'Horarios', '¿Cuál es la mejor hora para ir sin filas?', 'Entre semana de 11:00 a.m. a 2:00 p.m. suele haber menos gente. Los fines de semana por la tarde-noche hay más afluencia.', 'filas,fila,lleno,tranquilo', 1),
(108, 'Horarios', '¿Tienen horario especial en verano?', 'Sí, en temporada de calor extendemos el horario. Los cambios se anuncian en nuestras redes sociales.', 'verano,calor,temporada,horario especial', 1),
(109, 'Ubicación', '¿Dónde están ubicados?', 'Estamos en Calle Ejemplo 123, Col. Centro. Te esperamos en Bubbu\'s Place\'s.', 'dónde,ubicación,dirección,donde estan', 1),
(110, 'Ubicación', '¿Cuántas sucursales tienen?', 'Por ahora contamos con una sucursal principal. Estamos planeando abrir más, síguenos para enterarte.', 'sucursales,sucursal,tiendas', 1),
(111, 'Ubicación', '¿Tienen estacionamiento?', 'Contamos con lugares de estacionamiento frente al local y hay estacionamiento público a media cuadra.', 'estacionamiento,parking,carro,auto', 1),
(112, 'Ubicación', '¿Cómo llego en transporte público?', 'Pasan varias rutas de camión a una cuadra del local. Dinos desde dónde sales y te orientamos.', 'transporte,camión,ruta,llegar', 1),
(113, 'Ubicación', '¿Hay algún punto de referencia cerca?', 'Estamos a un costado de la plaza principal de la colonia, es fácil de encontrar por nuestro letrero rosa.', 'referencia,cerca,plaza,cómo llegar', 1),
(114, 'Ubicación', '¿Tienen módulo en plazas comerciales?', 'Por el momento no, solo estamos en nuestro local. Cualquier cambio lo anunciamos en redes.', 'módulo,plaza,centro comercial', 1),
(115, 'Ubicación', '¿Tienen servicio a domicilio en mi colonia?', 'Entregamos en un radio de 5 km alrededor del local. Dinos tu colonia y confirmamos si te llegamos.', 'colonia,cobertura,zona,domicilio', 1),
(116, 'Sabores', '¿Qué sabores tienen?', 'Tenemos vainilla, chocolate, fresa, limón, mango, queso, pistache, galleta, café y más. Los sabores de temporada cambian cada mes.', 'sabores,variedad,opciones,menú', 1),
(117, 'Sabores', '¿Cuáles son los sabores más vendidos?', 'Los favoritos son galleta con chocolate, fresa con crema, mango con chile y vainilla.', 'más vendidos,favoritos,populares,recomendado', 1),
(118, 'Sabores', '¿Tienen helado de vainilla?', 'Sí, nuestra vainilla es cremosa y se prepara con vainilla natural.', 'vainilla', 1),
(119, 'Sabores', '¿Tienen helado de chocolate?', 'Sí, tenemos chocolate clásico y chocolate amargo.', 'chocolate,cacao', 1),
(120, 'Sabores', '¿Tienen helado de fresa?', 'Sí, el de fresa se prepara con fruta de temporada.', 'fresa', 1),
(121, 'Sabores', '¿Tienen helado de limón?', 'Sí, tenemos nieve de limón, muy refrescante y sin lácteos.', 'limón,limon,nieve', 1),
(122, 'Sabores', '¿Tienen helado de queso?', 'Sí, el helado de queso es uno de los favoritos de la casa.', 'queso', 1),
(123, 'Sabores', '¿Tienen helado de pistache?', 'Sí, tenemos pistache con trocitos de nuez.', 'pistache,pistacho', 1),
(124, 'Sabores', '¿Tienen helado de galleta?', 'Sí, el de galleta con trozos crujientes es de los más pedidos.', 'galleta,oreo,cookies', 1),
(125, 'Sabores', '¿Tienen helado de mango?', 'Sí, y lo puedes pedir con chile en polvo si te gusta el toque picosito.', 'mango,chile', 1),
(126, 'Sabores', '¿Tienen helado sabor café?', 'Sí, tenemos helado de café para los amantes del café.', 'café,cafe', 1),
(127, 'Sabores', '¿Tienen sabores de temporada?', 'Sí, cada mes lanzamos uno o dos sabores nuevos de temporada. Consulta nuestras redes para ver el del mes.', 'temporada,nuevo,mes,especial', 1),
(128, 'Sabores', '¿Puedo probar un sabor antes de comprar?', 'Claro, con gusto te damos a probar una cucharadita de cualquier sabor.', 'probar,muestra,degustar', 1),
(129, 'Sabores', '¿Cada cuánto cambian los sabores?', 'Los sabores base son fijos y los de temporada cambian cada mes.', 'cambian,rotación,nuevos', 1),
(130, 'Precios', '¿Cuánto cuesta una bola de helado?', 'Una bola de helado cuesta $35 MXN.', 'precio,bola,cuánto cuesta,costo', 1),
(131, 'Precios', '¿Cuánto cuesta un cono doble?', 'El cono doble cuesta $60 MXN.', 'cono,doble,precio', 1),
(132, 'Precios', '¿Cuánto cuesta un litro de helado?', 'El litro cuesta $190 MXN y puedes elegir hasta 2 sabores.', 'litro,precio,helado', 1),
(133, 'Precios', '¿Venden medio litro?', 'Sí, el medio litro cuesta $110 MXN y puedes elegir un sabor.', 'medio litro,1/2 litro,precio', 1),
(134, 'Precios', '¿Qué es el Bubbu Sundae?', 'Es nuestra copa especial con 3 bolas, salsa, crema batida, cereza y galleta. Cuesta $85 MXN.', 'sundae,copa,especial', 1),
(135, 'Precios', '¿Venden malteadas?', 'Sí, tenemos malteadas de vainilla, chocolate y fresa por $75 MXN.', 'malteada,licuado,batido', 1),
(136, 'Precios', '¿Venden paletas?', 'Sí, tenemos paletas de crema y de agua desde $30 MXN.', 'paleta,paletas', 1),
(137, 'Precios', '¿Qué tipos de cono tienen?', 'Tenemos cono de barquillo, cono de waffle y vasito. El cono de waffle tiene un costo extra de $10 MXN.', 'cono,waffle,barquillo,vasito', 1),
(138, 'Precios', '¿Tienen banana split?', 'Sí, nuestra banana split cuesta $95 MXN y lleva 3 sabores, plátano, salsas y crema.', 'banana split,plátano', 1),
(139, 'Precios', '¿Venden café o bebidas calientes?', 'Sí, tenemos café americano, capuchino y chocolate caliente desde $35 MXN.', 'café,bebidas,chocolate caliente,capuchino', 1),
(140, 'Precios', '¿Cuánto cuestan los toppings extra?', 'Cada topping extra cuesta $10 MXN.', 'toppings,extra,costo', 1),
(141, 'Precios', '¿Qué toppings tienen?', 'Chispas de chocolate, grageas, nuez, cacahuate, galleta triturada, malvaviscos, coco rallado y salsas de chocolate, fresa y caramelo.', 'toppings,complementos,salsas,chispas', 1),
(142, 'Precios', '¿Venden pasteles de helado?', 'Sí, hacemos pasteles de helado de varios sabores. Se piden con anticipación.', 'pastel,pasteles,tarta,helado', 1),
(143, 'Precios', '¿Cuánto cuesta un pastel de helado?', 'Los pasteles de helado inician en $350 MXN para 8 porciones. El precio varía según el diseño y los sabores.', 'pastel,precio,costo,porciones', 1),
(144, 'Opciones especiales', '¿Tienen helado vegano?', 'Sí, tenemos nieves a base de agua y opciones veganas con leche de coco. Pregunta por los sabores disponibles del día.', 'vegano,vegana,sin leche,plant based', 1),
(145, 'Opciones especiales', '¿Tienen helado sin azúcar?', 'Contamos con algunos sabores sin azúcar añadida. Pregunta por ellos en mostrador.', 'sin azúcar,diabético,light', 1),
(146, 'Opciones especiales', '¿Tienen helado sin lactosa?', 'Sí, nuestras nieves de fruta y las opciones con leche de coco no llevan lactosa.', 'sin lactosa,lactosa,intolerante', 1),
(147, 'Opciones especiales', '¿Tienen opciones sin gluten?', 'Muchos sabores no llevan gluten, pero los que incluyen galleta o cono sí. Pide tu helado en vasito y consulta los ingredientes.', 'sin gluten,celíaco,celiaco,gluten', 1),
(148, 'Opciones especiales', '¿Qué sabores contienen nueces o cacahuate?', 'Pistache, nuez y los de temporada con frutos secos pueden contener nueces. Si tienes alergia, avísanos antes de pedir.', 'nuez,cacahuate,alergia,frutos secos', 1),
(149, 'Opciones especiales', '¿Sus productos tienen alérgenos?', 'Manejamos leche, huevo, gluten, nueces y cacahuate en nuestras instalaciones. Consulta con nosotros si tienes alguna alergia.', 'alérgenos,alergias,alergia', 1),
(150, 'Opciones especiales', '¿Tienen helado para niños con menos azúcar?', 'Sí, tenemos la opción Bubbu Kids, con porción pequeña y menos azúcar, por $25 MXN.', 'niños,infantil,menos azúcar,kids', 1),
(151, 'Opciones especiales', '¿Tienen helado para mascotas?', 'Sí, tenemos un helado especial para perritos a base de yogurt natural y plátano, sin azúcar. Cuesta $30 MXN.', 'mascotas,perro,perritos,helado para perros', 1),
(152, 'Opciones especiales', '¿Tienen opciones bajas en calorías?', 'Nuestras nieves de fruta son la opción más ligera. Pregunta por el yogurt helado.', 'calorías,light,dieta,ligero', 1),
(153, 'Opciones especiales', '¿Usan ingredientes naturales?', 'Sí, usamos fruta natural y leche fresca. Evitamos colorantes artificiales en la mayoría de nuestros sabores.', 'natural,ingredientes,fruta', 1),
(154, 'Pedidos', '¿Hacen entregas a domicilio?', 'Sí, entregamos a domicilio dentro de nuestra zona de cobertura.', 'domicilio,entrega,envío,delivery', 1),
(155, 'Pedidos', '¿Cuánto cuesta el envío?', 'El envío cuesta $30 MXN dentro de 5 km. Gratis en pedidos mayores a $300 MXN.', 'envío,costo,delivery,gratis', 1),
(156, 'Pedidos', '¿Cuánto tarda en llegar mi pedido?', 'Normalmente de 30 a 45 minutos, según la distancia y la hora.', 'tiempo,tarda,demora,llega', 1),
(157, 'Pedidos', '¿Cuál es el pedido mínimo a domicilio?', 'El pedido mínimo es de $100 MXN.', 'mínimo,pedido mínimo,domicilio', 1),
(158, 'Pedidos', '¿Cómo hago un pedido?', 'Puedes pedir por WhatsApp, por teléfono, o directamente aquí en el chat. Dime qué quieres y te ayudo.', 'pedido,pedir,ordenar,comprar', 1),
(159, 'Pedidos', '¿Puedo pedir por WhatsApp?', 'Sí, mándanos mensaje al 444 000 0000 con tu pedido y dirección.', 'whatsapp,mensaje,pedido', 1),
(160, 'Pedidos', '¿Puedo apartar mi pedido para recogerlo?', 'Sí, haz tu pedido y pasas por él al local sin hacer fila. Te avisamos cuando esté listo.', 'apartar,recoger,pasar por,pickup', 1),
(161, 'Pedidos', '¿El helado llega derretido?', 'No, lo enviamos en empaque térmico con hielo seco para que llegue en perfectas condiciones.', 'derretido,empaque,llega frío', 1),
(162, 'Pedidos', '¿Trabajan con aplicaciones de reparto?', 'Sí, estamos disponibles en las principales apps de reparto. También puedes pedir directo con nosotros para mejores precios.', 'apps,uber eats,rappi,didi food', 1),
(163, 'Pedidos', '¿Puedo cancelar mi pedido?', 'Sí, puedes cancelar sin costo antes de que comencemos a prepararlo. Avísanos lo antes posible.', 'cancelar,cambiar pedido,anular', 1),
(164, 'Pagos', '¿Qué formas de pago aceptan?', 'Aceptamos efectivo, tarjetas de débito y crédito y transferencias.', 'pago,formas de pago,métodos', 1),
(165, 'Pagos', '¿Aceptan tarjeta?', 'Sí, aceptamos tarjetas de débito y crédito Visa y Mastercard.', 'tarjeta,débito,crédito,visa,mastercard', 1),
(166, 'Pagos', '¿Aceptan transferencias?', 'Sí, te damos nuestros datos para que hagas tu transferencia y nos mandes el comprobante.', 'transferencia,spei,depósito', 1),
(167, 'Pagos', '¿Dan factura?', 'Sí, solicítala el mismo día de tu compra con tus datos fiscales.', 'factura,fiscal,rfc', 1),
(168, 'Pagos', '¿Aceptan dólares?', 'Por el momento solo aceptamos pesos mexicanos.', 'dólares,dolares,moneda', 1),
(169, 'Pagos', '¿Es obligatoria la propina?', 'No es obligatoria, es voluntaria y se agradece mucho.', 'propina,tip', 1),
(170, 'Promociones', '¿Tienen promociones?', 'Sí, tenemos promociones semanales. Consulta nuestras redes o pregunta en mostrador.', 'promoción,promociones,ofertas,descuento', 1),
(171, 'Promociones', '¿Tienen descuento para estudiantes?', 'Sí, 10% de descuento presentando tu credencial vigente de lunes a jueves.', 'estudiante,descuento,credencial', 1),
(172, 'Promociones', '¿Tienen descuento por cumpleaños?', 'Sí, en tu cumpleaños te regalamos una bola de helado presentando tu identificación.', 'cumpleaños,regalo,gratis', 1),
(173, 'Promociones', '¿Tienen tarjeta de lealtad?', 'Sí, por cada 10 compras te regalamos un helado. Pide tu tarjeta en mostrador.', 'lealtad,tarjeta,puntos,sellos', 1),
(174, 'Promociones', '¿Hay promoción 2x1?', 'Tenemos 2x1 en bolas de helado los miércoles. Revisa que siga vigente en nuestras redes.', '2x1,miércoles,dos por uno', 1),
(175, 'Promociones', '¿Tienen descuentos por compras al mayoreo?', 'Sí, en pedidos de 5 litros o más hay precio especial. Pide tu cotización.', 'mayoreo,descuento,volumen,cotización', 1),
(176, 'Promociones', '¿Tienen cupones?', 'Algunas veces compartimos cupones en nuestras redes sociales. Síguenos para no perdértelos.', 'cupón,cupones,código', 1),
(177, 'Promociones', '¿Cómo me entero de las promociones?', 'Siguiéndonos en nuestras redes sociales o preguntando aquí en el chat.', 'enterar,promos,redes', 1),
(178, 'Eventos', '¿Hacen fiestas de cumpleaños?', 'Sí, tenemos paquetes de fiesta con helado, toppings, decoración y personal. Pregunta por disponibilidad.', 'fiesta,cumpleaños,evento,paquete', 1),
(179, 'Eventos', '¿Ofrecen servicio de catering?', 'Sí, llevamos helados a tu evento: bodas, graduaciones y reuniones de empresa.', 'catering,evento,boda,empresa', 1),
(180, 'Eventos', '¿Rentan carrito de helados?', 'Sí, rentamos nuestro carrito con personal incluido para tu evento.', 'carrito,renta,evento', 1),
(181, 'Eventos', '¿Con cuánta anticipación debo reservar un evento?', 'Te recomendamos reservar con al menos 2 semanas de anticipación.', 'reservar,anticipación,fecha', 1),
(182, 'Eventos', '¿Cuánto cuesta el paquete de fiesta?', 'Los paquetes empiezan en $1,500 MXN para 15 personas. Varía según el número de invitados y extras.', 'paquete,fiesta,precio,invitados', 1),
(183, 'Eventos', '¿Puedo pedir un sabor personalizado?', 'Para pedidos grandes podemos preparar un sabor especial. Cuéntanos tu idea y la cotizamos.', 'personalizado,sabor especial,a pedido', 1),
(184, 'Eventos', '¿Hacen pasteles de helado personalizados?', 'Sí, personalizamos pasteles con tu mensaje, tema y sabores favoritos. Se piden con 3 días de anticipación.', 'pastel,personalizado,diseño,mensaje', 1),
(185, 'Eventos', '¿Aceptan reservaciones de mesa?', 'No manejamos reservaciones para uso diario, pero para grupos grandes avísanos con anticipación y te apartamos mesas.', 'reservación,mesa,grupo,apartar', 1),
(186, 'Establecimiento', '¿Tienen wifi?', 'Sí, ofrecemos wifi gratis para nuestros clientes. Pide la contraseña en mostrador.', 'wifi,internet,contraseña', 1),
(187, 'Establecimiento', '¿Aceptan mascotas?', 'Sí, nuestra terraza es pet friendly. Solo pedimos que tu mascota esté con correa.', 'mascotas,perros,pet friendly', 1),
(188, 'Establecimiento', '¿Tienen baños?', 'Sí, contamos con baños para nuestros clientes.', 'baño,baños,sanitarios', 1),
(189, 'Establecimiento', '¿Tienen área para niños?', 'Sí, tenemos una zona infantil con mesitas y juegos.', 'niños,área infantil,juegos', 1),
(190, 'Establecimiento', '¿El local tiene acceso para sillas de ruedas?', 'Sí, nuestro local es de planta baja y cuenta con rampa de acceso.', 'silla de ruedas,accesibilidad,rampa,discapacidad', 1),
(191, 'Establecimiento', '¿Tienen mesas al aire libre?', 'Sí, contamos con terraza con mesas al aire libre.', 'terraza,aire libre,mesas', 1),
(192, 'Establecimiento', '¿Tienen música en vivo o eventos?', 'De vez en cuando organizamos noches de música y eventos especiales. Los anunciamos en redes.', 'música,eventos,show', 1),
(193, 'Establecimiento', '¿Qué medidas de higiene siguen?', 'Nuestro personal usa guantes y cofia, desinfectamos superficies constantemente y los helados se conservan a temperatura controlada.', 'higiene,limpieza,sanidad', 1),
(194, 'Contacto', '¿Cuál es su teléfono?', 'Puedes llamarnos o escribirnos por WhatsApp al 444 000 0000.', 'teléfono,telefono,llamar,contacto', 1),
(195, 'Contacto', '¿Cuál es su correo electrónico?', 'Nuestro correo es contacto@bubbusplaces.com.', 'correo,email,mail', 1),
(196, 'Contacto', '¿Tienen redes sociales?', 'Sí, búscanos como @bubbusplaces en Facebook, Instagram y TikTok.', 'redes,facebook,instagram,tiktok', 1),
(197, 'General', '¿Por qué se llama Bubbu\'s Place\'s?', 'Es el nombre de nuestra heladería, pensado como un lugar divertido para toda la familia donde cada helado es una pequeña celebración.', 'nombre,historia,quiénes son', 1),
(198, 'General', '¿Están contratando personal?', 'Algunas veces abrimos vacantes. Envía tu CV a contacto@bubbusplaces.com o pregunta en el local.', 'empleo,trabajo,vacante,contratando', 1),
(199, 'General', '¿Cómo hago una queja o sugerencia?', 'Nos importa tu opinión. Escríbenos por WhatsApp, correo o díselo al encargado en el local.', 'queja,sugerencia,reclamo,opinión', 1),
(200, 'General', '¿Venden tarjetas de regalo?', 'Sí, tenemos tarjetas de regalo desde $100 MXN. Son un detalle perfecto para cualquier ocasión.', 'tarjeta de regalo,regalo,gift card,cupón', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faq`
--
ALTER TABLE `faq` ADD FULLTEXT KEY `ft_faq` (`pregunta`,`palabras_clave`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
