

<?php 
    headerAdmin($data); 
    //getModal('modalProductos',$data);
?>
<?php footerAdmin($data); ?>

<script src="<?= media() ?>/js-calendar/jquery.min.js"></script>
<script src="<?= media() ?>/js-calendar/moment.min.js"></script>
<link rel="stylesheet" href="<?= media() ?>/css-calendar/fullcalendar.min.css">
<script src="<?= media() ?>/js-calendar/fullcalendar.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="<?= media() ?>/js-calendar/es.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script></script>

    <!-- <div id="divModal"></div> -->
    <main class="app-content">
      <div class="app-title">
        <div>
            <h1><i class="fas fa-box"></i> <?= $data['page_title'] ?></h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="<?= base_url(); ?>/pedidos"><?= $data['page_title'] ?></a></li>
        </ul>
      </div>
        <div class="row">
            <!-- <div class="col-md-12">
              <div class="tile">
                <div class="tile-body">
                  <div class="table-responsive">
                    <table class="table table-hover table-bordered" id="tablePedidos">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>Ref. / Transacción</th>
                          <th>Fecha</th>
                          <th>Monto</th>
                          <th>Tipo pago</th>
                          <th>Estado</th>
                          <th>Acciones</th>
                        </tr>
                      </thead>
                      <tbody>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div> -->
        </div>
        

        <div class="container p-3 mb-2 bg-secondary text-white">
          <div class="row">
            <div class="col"></div>
            <div class="col-10"><div id="CalendarioWeb"></div></div>
            <div class="col"></div>
          </div>         
        </div>

    </main>
    
    <script>
      $(document).ready(function(){
        $('#CalendarioWeb').fullCalendar({
          header:  {
            left:   'today, month,basicWeek,basicDay, MiBoton',
            center: 'title,agendaWeek,agendaDay',
            right:  'today prev,next'
        },
        customButtons:{
            MiBoton:{
                text:"boton 1",
                click:function(){
                    alert("accion del boton");
                }
            }

        },
        dayClick: function(info) {
    alert('Date: ' + info.format());
    //alert('Resource ID: ' + info.name());
    $(this).css('background-color','red')
    //$('#container').css('background-color','red')
    $('#exampleModal').modal();
  }
        });
      });
    </script>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
    