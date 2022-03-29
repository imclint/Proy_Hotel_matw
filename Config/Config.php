<?php 
	
	//define("BASE_URL", "http://localhost/tienda_virtual/");
	//const BASE_URL = "https://abelosh.com/store";
	//const BASE_URL = "http://localhost/tienda_virtual";
	//const BASE_URL = "http://localhost:8081/Proy_Hotel_matw";
	const BASE_URL = "http://localhost:8080/Proy_Hotel_matw";

	//Zona horaria
	date_default_timezone_set('America/Guatemala');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	//const DB_NAME = "hotelbd";
	const DB_NAME = "aaaaaaaaa";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "$ ";
	const CURRENCY = "USD";

	//Api PayPal
	//SANDBOX PAYPAL
	const URLPAYPAL = "https://api-m.sandbox.paypal.com";
	const IDCLIENTE = "AW_RgheEmulsLfCT-pdfIHpECGwx6qbkBUtO5KFT6WxuayHhjvN_YFnWPRKOSLumxaV6tkSREOc57R5B";
	const SECRET = "EOBwjFQoVZG4Xd6tR0aLFvCcaJaM81mBtZU-60M_wQ3h2kvOBqCFdaPwDxvntg7DzaRwEpNFhTZZH5BW";
	//LIVE PAYPAL
	//const IDCLIENTE = "AWBtVubwv1loCQFkpbwVdxw3GN9v4wj8ieLQPCpm8i8v0iwHSO_wc1_fWPNqldrcrPh1RqQ1bIcZPKWD";
	//const URLPAYPAL = "https://api-m.paypal.com";
	//const SECRET = "ELCYtuxTFft8kEuAhcg8jE7_Bi31BnMd8E4DilpsnnsgXnZRUA8AKiXHwOVSPVu7xFIDZYw_6AjXulyC";

	//Datos envio de correo
	const NOMBRE_REMITENTE = "Hotel Passion Barranco";
	const EMAIL_REMITENTE = "no-reply@abelosh.com";
	const NOMBRE_EMPESA = "Hotel Passion Barranco";
	const WEB_EMPRESA = "Hotel Passion Barranco";

	const DESCRIPCION = "El mejor Hotel a nivel de Lima - Perú.";
	const SHAREDHASH = "Hotel Passion Barranco";

	//Datos Empresa
	const DIRECCION = "Avenida las Américas Zona 13, Lima";
	const TELEMPRESA = "99999998";
	const WHATSAPP = "+943995442";
	const EMAIL_EMPRESA = "HotelPassionBarranco@gmail.com";
	const EMAIL_PEDIDOS = "HotelPassionBarranco@gmail.com"; 
	const EMAIL_SUSCRIPCION = "HotelPassionBarranco@gmail.com";

	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,6";
	const CAT_FOOTER = "1,2,3,4,5";

	//Datos para Encriptar / Desencriptar
	const KEY = 'Hotal';
	const METHODENCRIPT = "AES-128-ECB";

	//Envío
	const COSTOENVIO = 0;

	//Módulos
	const MCLIENTES = 3;
	const MPEDIDOS = 5;
	const MSUSCRIPTORES = 7;

	//Roles
	const RADMINISTRADOR = 1;
	const RCLIENTES = 7;

	const STATUS = array('Completo','Aprobado','Cancelado','Reembolsado','Pendiente','Entregado');

	//Productos por página
	const CANTPORDHOME = 8;
	const PROPORPAGINA = 4;
	const PROCATEGORIA = 4;
	const PROBUSCAR = 4;

	//REDES SOCIALES
	const FACEBOOK = "https://www.facebook.com/passionhostels";
	const INSTAGRAM = "https://www.instagram.com/passionhostels/";
	

 ?>