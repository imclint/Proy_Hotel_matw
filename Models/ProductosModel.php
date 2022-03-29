<?php 

	class ProductosModel extends Mysql
	{
		private $intIdProducto;
		private $strNombre;
		private $strDescripcion;
		private $intCodigo;
		private $intCategoriaId;
		private $intPrecio;
		private $intStock;
		private $intStatus;
		private $strRuta;
		private $strImagen;

		private $intCapacidad;


		public function __construct()
		{
			parent::__construct();
		}

		public function selectProductos(){
			$sql = "SELECT p.idproducto,
							p.codigo,
							p.nombre,
							p.descripcion,
							p.categoriaid,
							c.nombre as categoria,
							p.precio,
							p.stock,
							p.status 
					FROM producto p 
					INNER JOIN categoria c
					ON p.categoriaid = c.idcategoria
					WHERE p.status != 0 ";
					$request = $this->select_all($sql);
			return $request;
		}	
		public function selectHabitaciones(){
			$sql = "SELECT h.idHabitacion,h.Nombre,h.descripcion,c.idcategoria,
			c.nombre as categoria,h.capacidad,h.status,h.precio 
			from habitaciones h 
			INNER JOIN categoria c 
			on h.id_categoria=c.idcategoria";
					$request = $this->select_all($sql);
			return $request;
		}

		public function insertProducto(string $nombre, string $descripcion, int $codigo, int $categoriaid, string $precio, int $stock, string $ruta, int $status){
			$this->strNombre = $nombre;
			$this->strDescripcion = $descripcion;
			$this->intCodigo = $codigo;
			$this->intCategoriaId = $categoriaid;
			$this->strPrecio = $precio;
			$this->intStock = $stock;
			$this->strRuta = $ruta;
			$this->intStatus = $status;
			$return = 0;
			$sql = "SELECT * FROM producto WHERE codigo = '{$this->intCodigo}'";
			$request = $this->select_all($sql);
			if(empty($request))
			{
				$query_insert  = "INSERT INTO producto(categoriaid,
														codigo,
														nombre,
														descripcion,
														precio,
														stock,
														ruta,
														status) 
								  VALUES(?,?,?,?,?,?,?,?)";
	        	$arrData = array($this->intCategoriaId,
        						$this->intCodigo,
        						$this->strNombre,
        						$this->strDescripcion,
        						$this->strPrecio,
        						$this->intStock,
        						$this->strRuta,
        						$this->intStatus);
	        	$request_insert = $this->insert($query_insert,$arrData);
	        	$return = $request_insert;
			}else{
				$return = "exist";
			}
	        return $return;
		}
		public function insertHabitacion(string $nombre, string $descripcion, int $capacidad, int $categoriaid, string $precio,
		 string $ruta, 
		 int $status
		 ){
			$this->strNombre = $nombre;
			$this->strDescripcion = $descripcion;
			$this->intCapacidad = $capacidad;
			$this->intCategoriaId = $categoriaid;
			$this->strPrecio = $precio;			
			$this->strRuta = $ruta;
			$this->intStatus = $status;
			$return = 0;
			
			$query_insert  = "INSERT INTO habitaciones ( Nombre,descripcion, Precio, id_categoria,
			 				capacidad,ruta, status) VALUES (?,?,?,?,?,?,?)";
	        $arrData = array(
							$this->strNombre,
							$this->strDescripcion,
							$this->strPrecio,
							$this->intCategoriaId,
							$this->intCapacidad,  
							$this->strRuta,      					
        					$this->intStatus,);
	        $request_insert = $this->insert($query_insert,$arrData);
	        $return = $request_insert;
			
	        return $return;
		}
		

		public function updateProducto(int $idproducto, string $nombre, string $descripcion, int $codigo, int $categoriaid, string $precio, int $stock, string $ruta, int $status){
			$this->intIdProducto = $idproducto;
			$this->strNombre = $nombre;
			$this->strDescripcion = $descripcion;
			$this->intCodigo = $codigo;
			$this->intCategoriaId = $categoriaid;
			$this->strPrecio = $precio;
			$this->intStock = $stock;
			$this->strRuta = $ruta;
			$this->intStatus = $status;
			$return = 0;
			$sql = "SELECT * FROM producto WHERE codigo = '{$this->intCodigo}' AND idproducto != $this->intIdProducto ";
			$request = $this->select_all($sql);
			if(empty($request))
			{
				$sql = "UPDATE producto 
						SET categoriaid=?,
							codigo=?,
							nombre=?,
							descripcion=?,
							precio=?,
							stock=?,
							ruta=?,
							status=? 
						WHERE idproducto = $this->intIdProducto ";
				$arrData = array($this->intCategoriaId,
        						$this->intCodigo,
        						$this->strNombre,
        						$this->strDescripcion,
        						$this->strPrecio,
        						$this->intStock,
        						$this->strRuta,
        						$this->intStatus);

	        	$request = $this->update($sql,$arrData);
	        	$return = $request;
			}else{
				$return = "exist";
			}
	        return $return;
		}
		public function updateHabitacion(int $idhabitacion, string $nombre, string $descripcion, int $capacidad, int $categoriaid, string $precio,string $ruta,int $status){
			$this->intIdProducto = $idhabitacion;
			$this->strNombre = $nombre;
			$this->strDescripcion = $descripcion;
			$this->intCapacidad = $capacidad;
			$this->intCategoriaId = $categoriaid;
			$this->strPrecio = $precio;			
			$this->strRuta = $ruta;
			$this->intStatus = $status;
			$return = 0;
			$sql = "SELECT * FROM producto WHERE codigo = '{$this->intCodigo}' AND idproducto != $this->intIdProducto ";
			$request = $this->select_all($sql);
			if(empty($request))
			{
				$sql = "UPDATE habitaciones 
						SET id_categoria=?,
							
							Nombre=?,
							descripcion=?,
							precio=?,
							capacidad=?,
							ruta=?,
							status=? 
						WHERE idhabitacion = $this->intIdProducto ";
				$arrData = array($this->intCategoriaId,
        						$this->strNombre,
								$this->strDescripcion,
								$this->strPrecio,
								
								$this->intCapacidad,
								$this->strRuta,        					
        						$this->intStatus);

	        	$request = $this->update($sql,$arrData);
	        	$return = $request;
			}else{
				$return = "exist";
			}
	        return $return;
		}

		public function selectProducto(int $idproducto){
			$this->intIdProducto = $idproducto;
			$sql = "SELECT p.idproducto,
							p.codigo,
							p.nombre,
							p.descripcion,
							p.precio,
							p.stock,
							p.categoriaid,
							c.nombre as categoria,
							p.status
					FROM producto p
					INNER JOIN categoria c
					ON p.categoriaid = c.idcategoria
					WHERE idproducto = $this->intIdProducto";
			$request = $this->select($sql);
			return $request;

		}public function selectHabitacion(int $idhabitacion){
			$this->intIdProducto = $idhabitacion;
			$sql = "SELECT h.idHabitacion,h.Nombre,h.descripcion,c.idcategoria,
			c.nombre as categoria,h.capacidad,h.status,h.precio 
			from habitaciones h 
			INNER JOIN categoria c 
			on h.id_categoria=c.idcategoria
			WHERE idHabitacion = $this->intIdProducto";
			$request = $this->select($sql);
			return $request;

		}

		public function insertImage(int $idHabitacion, string $imagen){
			$this->intIdidHabitacion = $idHabitacion;
			$this->strImagen = $imagen;
			$query_insert  = "INSERT INTO imagen(productoid,img) VALUES(?,?)";
	        $arrData = array($this->intIdidHabitacion,
        					$this->strImagen);
	        $request_insert = $this->insert($query_insert,$arrData);
	        return $request_insert;
		}

		public function selectImages(int $idproducto){
			$this->intIdProducto = $idproducto;
			$sql = "SELECT productoid,img
					FROM imagen
					WHERE productoid = $this->intIdProducto";
			$request = $this->select_all($sql);
			return $request;
		}

		public function deleteImage(int $idproducto, string $imagen){
			$this->intIdProducto = $idproducto;
			$this->strImagen = $imagen;
			$query  = "DELETE FROM imagen 
						WHERE productoid = $this->intIdProducto 
						AND img = '{$this->strImagen}'";
	        $request_delete = $this->delete($query);
	        return $request_delete;
		}

		public function deleteProducto(int $idproducto){
			$this->intIdProducto = $idproducto;
			$sql = "UPDATE habitaciones SET status = ? WHERE idHabitacion = $this->intIdProducto ";
			$arrData = array(0);
			$request = $this->update($sql,$arrData);
			return $request;
		}
	}
 ?>