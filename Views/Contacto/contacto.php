<?php 
headerTienda($data);

 ?>
    <br><br><br><br>
    
    <div class="bg0 m-t-23 p-b-140">
		<div class="container">
        <div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<h3 class="mx-auto" style="width: 200px;">Contactanos</h3>
		</div>
        <form>
        <div class="row">
            <div class="col-md-8">
                    <label for="exampleFormControlInput1">Correo:</label>
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Nombre@Ejemplo.com" required>
            </div><div class="col-md-4">
                    <label for="exampleFormControlInput1">Telefono de Contacto:</label>
                    <input type="number" class="form-control" id="exampleFormControlInput2" placeholder="+51 ...." required>
            </div>
                
            <div class="col-md-12"><br>
                    <label for="exampleFormControlTextarea1">Ingrese Duda o Reclamo:</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Reclam..." rows="3" required></textarea><br><br>
            </div>
            <div class="col-md-10">
                    <button type="submit" onclick="miFunc()" class="btn btn-primary">Enviar</button>
            </div>
                
        </div>
            
            </form>
        </div>
        <script>
            function miFunc() {
                if(document.getElementById("exampleFormControlInput1").value === "")
                {
                    swal("Alerta !", " ingrese un correo " ,"error");
                }
                else if(document.getElementById("exampleFormControlInput2").value === "")
                {
                    swal("Alerta !", " ingrese un numero de celular " ,"error");
                }
                else if(document.getElementById("exampleFormControlTextarea1").value === "")
                {
                    swal("Alerta !", " ingrese un mensaje " ,"error");
                }
                else
                {
                document.getElementById("exampleFormControlInput1").value = "";
                document.getElementById("exampleFormControlInput2").value = "";
                document.getElementById("exampleFormControlTextarea1").value = "";
                swal("Correcto !", "Recibimos tu consulta , muy pronto estaremos en contacto " ,"success");
                }
                
            //alert('Se ha dado clic al botón!');
            }
        </script>
    </div>
    <script type="text/javascript" src="<?= media(); ?>/js/plugins/sweetalert.min.js"></script>
<?php 

	footerTienda($data);
?>