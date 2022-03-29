<?php 
require_once("Models/TTipoPago.php"); 
class Pendientes extends Controllers{
	use TTipoPago;
	public function __construct()
	{
		parent::__construct();
		session_start();
		session_regenerate_id(true);
		if(empty($_SESSION['login']))
		{
			header('Location: '.base_url().'/login');
			die();
		}
		//getPermisos(MPEDIDOS);
	}

	public function Pendientes()
	{
		// if(empty($_SESSION['permisosMod']['r'])){
		// 	header("Location:".base_url().'/dashboard');
		// }
		$data['page_tag'] = "Pendientes";
		$data['page_title'] = "PENDIENTES <small>Hotel Passión Barranco</small>";
		$data['page_name'] = "Pendientes";
		$data['page_functions_js'] = "functions_pendientes.js";
		$this->views->getView($this,"pendientes",$data);
	}

}
 ?>