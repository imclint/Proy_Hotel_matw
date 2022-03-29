<?php 
headerTienda($data);
// echo "hola";
// DEP($data);
 ?>
<br><br><br>
<div class="jumbotron text-center">
  <h1 class="display-4">¡Gracias por tu Reserva!</h1>
  <p class="lead">Tu pedido fue procesado con éxito.</p>
  <p>No. Orden: <strong> <?= $data['orden']; ?> </strong></p>
  	<?php 
  		if(!empty($data['transaccion'])){
    ?>
    <p>Transacción: <strong> <?= $data['transaccion']; ?> </strong></p>
   <?php } ?>
   <h3 class="display-5">HORA DE ATENCIÓN : 8:00  - 22:00 </h3>
  <hr class="my-4">
  <p>Muy pronto estaremos en contacto para coordinar las reservas.</p>
  <p>Puedes ver el estado de tu pedido en la sección pedidos de tu usuario.</p>
  <br>
  <a class="btn btn-primary btn-lg" href="<?= base_url(); ?>" role="button">Continuar</a>
</div>

<?php 
	footerTienda($data);
?>