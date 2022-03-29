<?php 
	require_once("Models/TCategoria.php");
	require_once("Models/TProducto.php");
	require_once("Models/TTipoPago.php");
	require_once("Models/TCliente.php");
	class Carrito extends Controllers{
		use TCategoria, TProducto, TTipoPago, TCliente;
		public function __construct()
		{
			parent::__construct();
			session_start();
		}

		public function carrito()
		{
			$data['page_tag'] = NOMBRE_EMPESA.' - Carrito';
			$data['page_title'] = 'Carrito de Habitaciones';
			$data['page_name'] = "carrito";
			$this->views->getView($this,"carrito",$data); 
		}
		public function procesarpago()
		{
			if(empty($_SESSION['arrCarrito'])){ 
				header("Location: ".base_url());
				die();
			}
			if(isset($_SESSION['login']))
			{
				$this->setDetalleTemp();
			}

			$data['page_tag'] = NOMBRE_EMPESA.' - Procesar Pago';
			$data['page_title'] = 'Procesar reserva';
			$data['page_name'] = "procesarpago";
			$data['tiposPago'] = $this->getTiposPagoT();
			$this->views->getView($this,"procesarpago",$data); 
			//echo "hola";
			//dep($_SESSION['arrCarrito']);
		}
		public function setDetalleTemp()
		{
			$sid=session_id();
			// echo $sid;
			// echo"<br>";
			// echo $_SESSION['idUser'];
			// dep($_SESSION['arrCarrito']);

			$arrPedido =array('idcliente'=>$_SESSION['idUser'],
								'idtransaccion'=>$sid,
								'productos'=>$_SESSION['arrCarrito']
							);

			//dep($arrPedido);
			$this->insertDetalleTemp($arrPedido);
		}
	}
 ?>
