// document.write(`<script src="${base_url}/Assets/js/plugins/JsBarcode.all.min.js"></script>`);
let tableProductos;
let tableHabitaciones;
let rowTable = "";
$(document).on('focusin', function(e) {
    if ($(e.target).closest(".tox-dialog").length) {
        e.stopImmediatePropagation();
    }
});
tableProductos = $('#tableProductos').dataTable( {
    "aProcessing":true,
    "aServerSide":true,
    "language": {
        "url": "//cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json"
    },
    "ajax":{
        "url": " "+base_url+"/Productos/getProductos",
        "dataSrc":""
    },
    "columns":[
        {"data":"idproducto"},
        {"data":"codigo"},
        {"data":"nombre"},
        {"data":"stock"},
        {"data":"precio"},
        {"data":"status"},
        {"data":"options"}
    ],
    "columnDefs": [
                    { 'className': "textcenter", "targets": [ 3 ] },
                    { 'className': "textright", "targets": [ 4 ] },
                    { 'className': "textcenter", "targets": [ 5 ] }
                  ],       
    'dom': 'lBfrtip',
    'buttons': [
        {
            "extend": "copyHtml5",
            "text": "<i class='far fa-copy'></i> Copiar",
            "titleAttr":"Copiar",
            "className": "btn btn-secondary",
            "exportOptions": { 
                "columns": [ 0, 1, 2, 3, 4, 5] 
            }
        },{
            "extend": "excelHtml5",
            "text": "<i class='fas fa-file-excel'></i> Excel",
            "titleAttr":"Esportar a Excel",
            "className": "btn btn-success",
            "exportOptions": { 
                "columns": [ 0, 1, 2, 3, 4, 5] 
            }
        },{
            "extend": "pdfHtml5",
            "text": "<i class='fas fa-file-pdf'></i> PDF",
            "titleAttr":"Esportar a PDF",
            "className": "btn btn-danger",
            "exportOptions": { 
                "columns": [ 0, 1, 2, 3, 4, 5] 
            }
        },{
            "extend": "csvHtml5",
            "text": "<i class='fas fa-file-csv'></i> CSV",
            "titleAttr":"Esportar a CSV",
            "className": "btn btn-info",
            "exportOptions": { 
                "columns": [ 0, 1, 2, 3, 4, 5] 
            }
        }
    ],
    "resonsieve":"true",
    "bDestroy": true,
    "iDisplayLength": 10,
    "order":[[0,"desc"]]  
});
tableHabitaciones = $('#tableHabitaciones').dataTable( {
    "aProcessing":true,
    "aServerSide":true,
    "language": {
        "url": "//cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json"
    },
    "ajax":{
        "url": " "+base_url+"/Productos/getHabitaciones",
        "dataSrc":""
    },
    "columns":[
        {"data":"idHabitacion"},
        {"data":"Nombre"},
        {"data":"descripcion"},
        {"data":"categoria"},
        {"data":"capacidad"},
        {"data":"precio"},
        {"data":"status"},
        {"data":"options"}
    ],
    "columnDefs": [
                    { 'className': "textcenter", "targets": [ 3 ] },
                    { 'className': "textright", "targets": [ 4 ] },
                    { 'className': "textcenter", "targets": [ 5 ] }
                  ],       
    'dom': 'lBfrtip',
    'buttons': [
        {
            "extend": "copyHtml5",
            "text": "<i class='far fa-copy'></i> Copiar",
            "titleAttr":"Copiar",
            "className": "btn btn-secondary",
            "exportOptions": { 
                "columns": [ 0, 1, 2, 3, 4, 5,6] 
            }
        },{
            "extend": "excelHtml5",
            "text": "<i class='fas fa-file-excel'></i> Excel",
            "titleAttr":"Esportar a Excel",
            "className": "btn btn-success",
            "exportOptions": { 
                "columns": [ 0, 1, 2, 3, 4, 5,6] 
            }
        },{
            "extend": "pdfHtml5",
            "text": "<i class='fas fa-file-pdf'></i> PDF",
            "titleAttr":"Esportar a PDF",
            "className": "btn btn-danger",
            "exportOptions": { 
                "columns": [ 0, 1, 2, 3, 4, 5,6] 
            }
        },{
            "extend": "csvHtml5",
            "text": "<i class='fas fa-file-csv'></i> CSV",
            "titleAttr":"Esportar a CSV",
            "className": "btn btn-info",
            "exportOptions": { 
                "columns": [ 0, 1, 2, 3, 4, 5,6] 
            }
        }
    ],
    "resonsieve":"true",
    "bDestroy": true,
    "iDisplayLength": 10,
    "order":[[0,"desc"]]  
});
window.addEventListener('load', function() {
    if(document.querySelector("#formProductos")){
        let formProductos = document.querySelector("#formProductos");
        formProductos.onsubmit = function(e) {
            e.preventDefault();
            let intId = document.querySelector('#idHabitacion').value;
            let strNombre = document.querySelector('#txtNombre').value;
            let strDescripcion = document.querySelector('#txtDescripcions').value;
            let strPrecio = document.querySelector('#txtPrecio').value;
            let intCapacidad = document.querySelector('#txtCapacidad').value;                        
            let intStatus = document.querySelector('#listStatus').value;
            if(strNombre == '' ||  strPrecio== '' || intCapacidad == ''  )
            {
                swal("Atención", "Todos los campos son obligatorios." , "error");
                return false;
            }
            // if(intCodigo.length < 5){
            //     swal("Atención", "El código debe ser mayor que 5 dígitos." , "error");
            //     return false;
            // }
            divLoading.style.display = "flex";
            //tinyMCE.triggerSave();
            let request = (window.XMLHttpRequest) ? 
                            new XMLHttpRequest() : 
                            new ActiveXObject('Microsoft.XMLHTTP');
            let ajaxUrl = base_url+'/Productos/setHabitacion'; 
            let formData = new FormData(formProductos);
            request.open("POST",ajaxUrl,true);
            request.send(formData);
            request.onreadystatechange = function(){
                if(request.readyState == 4 && request.status == 200){
                    // console.log(request.responseText);
                    let objData = JSON.parse(request.responseText);
                    //console.log(objData.idHabitacion)
                    if(objData.status)
                    {
                        swal("", objData.msg ,"success");
                        //objData.idproducto;
                        console.log(objData.idHabitacion);
                        document.querySelector("#idHabitacion").value = intId;
                        document.querySelector("#containerGallery").classList.remove("notblock");

                        if(rowTable == ""){
                            tableProductos.api().ajax.reload();
                        }else{
                            if(intStatus == 1)
                           {
                            estado='<span class="badge badge-primary">Activo</span>';
                           }else if(intStatus == 2)
                           {
                            estado= '<span class="badge badge-success">Disponible</span>';
                           }else if(intStatus == 3)
                           {
                            estado='<span class="badge badge-warning">Reservado</span>';
                           }else if(intStatus == 4)
                           {
                            estado='<span class="badge badge-danger">Ocupado</span>';
                           }else if(intStatus == 5)
                           {
                            estado= '<span class="badge  badge-white bg-dark text-info">Limpieza</span>';
                           }else{
                            estado= '<span class="badge badge-secondary">Inactivo</span>';
                           };
                           htmlStatus = estado
                            //rowTable.cells[0].textContent = objData.idproducto;
                            rowTable.cells[1].textContent = strNombre;
                            rowTable.cells[2].textContent = strDescripcion;
                            rowTable.cells[3].textContent = document.querySelector("#listCategoria").selectedOptions[0].text;
                            rowTable.cells[4].innerHTML =  intCapacidad;
                            rowTable.cells[5].textContent = smony+strPrecio;
                            rowTable.cells[6].innerHTML =  htmlStatus;
                          
                            rowTable = ""; 
                        }
                        
                        // $('#modalFormProductos').modal("hide");
                        // formProductos.reset();
                    }else{
                        swal("Error", objData.msg , "error");
                    }
                }
                divLoading.style.display = "none";
                return false;
            }
        }
    }

    if(document.querySelector(".btnAddImage")){
       let btnAddImage =  document.querySelector(".btnAddImage");
       btnAddImage.onclick = function(e){
        let key = Date.now();
        console.log(key);
        let newElement = document.createElement("div");
        newElement.id= "div"+key;
        newElement.innerHTML = `
            <div class="prevImage"></div>
            <input type="file" name="foto" id="img${key}" class="inputUploadfile">
            <label for="img${key}" class="btnUploadfile"><i class="fas fa-upload "></i></label>
            <button class="btnDeleteImage " type="button" onclick="fntDelItem('#div${key}')">
            <i class="fas fa-trash-alt"></i></button>`;
        document.querySelector("#containerImages").appendChild(newElement);
        document.querySelector("#div"+key+" .btnUploadfile").click();
        fntInputFile();
       }
    }

    fntInputFile();
    fntCategorias();
}, false);

if(document.querySelector("#txtCodigo")){
    let inputCodigo = document.querySelector("#txtCodigo");
    inputCodigo.onkeyup = function() {
        if(inputCodigo.value.length >= 5){
            document.querySelector('#divBarCode').classList.remove("notblock");
            fntBarcode();
       }else{
            document.querySelector('#divBarCode').classList.add("notblock");
       }
    };
}

tinymce.init({
	selector: '#txtDescripcion',
	width: "100%",
    height: 400,    
    statubar: true,
    plugins: [
        "advlist autolink link image lists charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
        "save table contextmenu directionality emoticons template paste textcolor"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | print preview media fullpage | forecolor backcolor emoticons",
});

function fntInputFile(){
    let inputUploadfile = document.querySelectorAll(".inputUploadfile");
    inputUploadfile.forEach(function(inputUploadfile) {
        inputUploadfile.addEventListener('change', function(){
            let idProducto = document.querySelector("#idHabitacion").value;
            console.log(idProducto);
            let parentId = this.parentNode.getAttribute("id");
            let idFile = this.getAttribute("id");            
            let uploadFoto = document.querySelector("#"+idFile).value;
            let fileimg = document.querySelector("#"+idFile).files;
            let prevImg = document.querySelector("#"+parentId+" .prevImage");
            let nav = window.URL || window.webkitURL;
            if(uploadFoto !=''){
                let type = fileimg[0].type;
                let name = fileimg[0].name;
                if(type != 'image/jpeg' && type != 'image/jpg' && type != 'image/png'){
                    prevImg.innerHTML = "Archivo no válido";
                    uploadFoto.value = "";
                    return false;
                }else{
                    let objeto_url = nav.createObjectURL(this.files[0]);
                    prevImg.innerHTML = `<img class="loading" src="${base_url}/Assets/images/loading.svg" >`;

                    let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
                    let ajaxUrl = base_url+'/Productos/setImage'; 
                    let formData = new FormData();
                    let id_post=formData.append('idproducto',idProducto);
                    formData.append("foto", this.files[0]);
                    request.open("POST",ajaxUrl,true);
                    request.send(formData);
                    request.onreadystatechange = function(){
                        if(request.readyState != 4) return;
                        if(request.status == 200){
                            console.log("Hola por si no t sale")
                            console.log(id_post)
                            if(JSON.parse(request.responseText =0))
                            {
                                console.log("creo que esta vacio")
                            }
                            
                            let objData = JSON.parse(request.responseText);
                            console.log(objData)
                            if(objData.status){
                                prevImg.innerHTML = `<img src="${objeto_url}">`;
                                document.querySelector("#"+parentId+" .btnDeleteImage").setAttribute("imgname",objData.imgname);
                                document.querySelector("#"+parentId+" .btnUploadfile").classList.add("notblock");
                                document.querySelector("#"+parentId+" .btnDeleteImage").classList.remove("notblock");
                            }else{
                                swal("Error", objData.msg , "error");
                            }
                        }
                    }

                }
            }

        });
    });
}

function fntDelItem(element){
    let nameImg = document.querySelector(element+' .btnDeleteImage').getAttribute("imgname");
    let idProducto = document.querySelector("#idHabitacion").value;
    let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
    let ajaxUrl = base_url+'/Productos/delFile'; 

    let formData = new FormData();
    formData.append('idproducto',idProducto);
    formData.append("file",nameImg);
    request.open("POST",ajaxUrl,true);
    request.send(formData);
    request.onreadystatechange = function(){
        if(request.readyState != 4) return;
        if(request.status == 200){
            let objData = JSON.parse(request.responseText);
            if(objData.status)
            {
                let itemRemove = document.querySelector(element);
                itemRemove.parentNode.removeChild(itemRemove);
            }else{
                swal("", objData.msg , "error");
            }
        }
    }
}

function fntViewInfo(idProducto){
    let request = (window.XMLHttpRequest) ? 
                    new XMLHttpRequest() : 
                    new ActiveXObject('Microsoft.XMLHTTP');
    let ajaxUrl = base_url+'/Productos/gethabitacion/'+idProducto;
    request.open("GET",ajaxUrl,true);
    request.send();
    request.onreadystatechange = function(){
        if(request.readyState == 4 && request.status == 200){
            let objData = JSON.parse(request.responseText);
            let resul;
            if(objData.status)
            {
                let htmlImage = "";
                let objProducto = objData.data;
                if(objProducto.status == 1)
                {
                    resul = '<span class="badge badge-primary">Activo</span>';
                }else if(objProducto.status == 2)
                {
                    resul = '<span class="badge badge-success">Disponible</span>';
                }
                else if(objProducto.status == 3)
                {
                    resul = '<span class="badge badge-warning">Reservado</span>';
                }
                else if(objProducto.status == 4)
                {
                    resul = '<span class="badge badge-danger">Ocupado</span>';
                }else if(objProducto.status == 5)
                {
                    resul = '<span class="badge  badge-white bg-dark text-info">Limpieza</span>';
                }else{
                    resul = '<span class="badge badge-secondary">Inactivo</span>';
                }
                
                let estadoProducto = resul;

                document.querySelector("#celCodigo").innerHTML = objProducto.idHabitacion;
                document.querySelector("#celNombre").innerHTML = objProducto.Nombre;
                document.querySelector("#celPrecio").innerHTML = objProducto.precio;
                document.querySelector("#celCapacidad").innerHTML = objProducto.capacidad;
                document.querySelector("#celCategoria").innerHTML = objProducto.categoria;
                document.querySelector("#celStatus").innerHTML = estadoProducto;
                document.querySelector("#celDescripcion").innerHTML = objProducto.descripcion;

                if(objProducto.images.length > 0){
                    let objProductos = objProducto.images;
                    for (let p = 0; p < objProductos.length; p++) {
                        htmlImage +=`<img src="${objProductos[p].url_image}"></img>`;
                    }
                }
                document.querySelector("#celFotos").innerHTML = htmlImage;
                $('#modalViewProducto').modal('show');

            }else{
                swal("Error", objData.msg , "error");
            }
        }
    } 
}

function fntEditInfo(element,idProducto){
    rowTable = element.parentNode.parentNode.parentNode;
    document.querySelector('#titleModal').innerHTML ="Actualizar Habitación";
    document.querySelector('.modal-header').classList.replace("headerRegister", "headerUpdate");
    document.querySelector('#btnActionForm').classList.replace("btn-primary", "btn-info");
    document.querySelector('#btnText').innerHTML ="Actualizar";
    let request = (window.XMLHttpRequest) ? 
                    new XMLHttpRequest() : 
                    new ActiveXObject('Microsoft.XMLHTTP');
    let ajaxUrl = base_url+'/Productos/gethabitacion/'+idProducto;
    request.open("GET",ajaxUrl,true);
    request.send();
    request.onreadystatechange = function(){
        if(request.readyState == 4 && request.status == 200){
            let objData = JSON.parse(request.responseText);
            if(objData.status)
            {
                let htmlImage = "";
                let objProducto = objData.data;
                document.querySelector("#idHabitacion").value = objProducto.idHabitacion;
                document.querySelector("#txtNombre").value = objProducto.Nombre;
                document.querySelector("#txtDescripcions").value = objProducto.descripcion;
                 document.querySelector("#txtCapacidad").value = objProducto.capacidad;
                 document.querySelector("#txtPrecio").value = objProducto.precio;
                // // document.querySelector("#txtStock").value = objProducto.stock;
                 document.querySelector("#listCategoria").value = objProducto.idcategoria;
                 $('#listCategoria').selectpicker('render');
                 
                document.querySelector("#listStatus").value = objProducto.status;
                // tinymce.activeEditor.setContent(objProducto.descripcion); 
                // $('#listCategoria').selectpicker('render');
                $('#listStatus').selectpicker('render');
                //fntBarcode();

                if(objProducto.images.length > 0){
                    let objProductos = objProducto.images;
                    for (let p = 0; p < objProductos.length; p++) {
                        let key = Date.now()+p;
                        htmlImage +=`<div id="div${key}">
                            <div class="prevImage">
                            <img src="${objProductos[p].url_image}"></img>
                            </div>
                            <button type="button" class="btnDeleteImage" onclick="fntDelItem('#div${key}')" imgname="${objProductos[p].img}">
                            <i class="fas fa-trash-alt"></i></button></div>`;
                    }
                }
                document.querySelector("#containerImages").innerHTML = htmlImage; 
                //document.querySelector("#divBarCode").classList.remove("notblock");
                document.querySelector("#containerGallery").classList.remove("notblock");           
                $('#modalFormProductos').modal('show');
            }else{
                swal("Error", objData.msg , "error");
            }
        }
    }
}

function fntDelInfo(idProducto){
    swal({
        title: "Eliminar Producto",
        text: "¿Realmente quiere eliminar el producto?",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Si, eliminar!",
        cancelButtonText: "No, cancelar!",
        closeOnConfirm: false,
        closeOnCancel: true
    }, function(isConfirm) {
        
        if (isConfirm) 
        {
            let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
            let ajaxUrl = base_url+'/Productos/delProducto';
            let strData = "idProducto="+idProducto;
            request.open("POST",ajaxUrl,true);
            request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            request.send(strData);
            request.onreadystatechange = function(){
                if(request.readyState == 4 && request.status == 200){
                    let objData = JSON.parse(request.responseText);
                    if(objData.status)
                    {
                        swal("Eliminar!", objData.msg , "success");
                        tableProductos.api().ajax.reload();
                    }else{
                        swal("Atención!", objData.msg , "error");
                    }
                }
            }
        }

    });

}



function fntCategorias(){
    if(document.querySelector('#listCategoria')){
        let ajaxUrl = base_url+'/Categorias/getSelectCategorias';
        let request = (window.XMLHttpRequest) ? 
                    new XMLHttpRequest() : 
                    new ActiveXObject('Microsoft.XMLHTTP');
        request.open("GET",ajaxUrl,true);
        request.send();
        request.onreadystatechange = function(){
            if(request.readyState == 4 && request.status == 200){
                document.querySelector('#listCategoria').innerHTML = request.responseText;
                $('#listCategoria').selectpicker('render');
            }
        }
    }
}

function fntBarcode(){
    let codigo = document.querySelector("#txtCodigo").value;
    JsBarcode("#barcode", codigo);
}

function fntPrintBarcode(area){
    let elemntArea = document.querySelector(area);
    let vprint = window.open(' ', 'popimpr', 'height=400,width=600');
    vprint.document.write(elemntArea.innerHTML );
    vprint.document.close();
    vprint.print();
    vprint.close();
}

function openModal()
{
    rowTable = "";
    document.querySelector('#idHabitacion').value ="";
    document.querySelector('.modal-header').classList.replace("headerUpdate", "headerRegister");
    document.querySelector('#btnActionForm').classList.replace("btn-info", "btn-primary");
    document.querySelector('#btnText').innerHTML ="Guardar";
    document.querySelector('#titleModal').innerHTML = "Nueva Habitación";
    document.querySelector("#formProductos").reset();
    //document.querySelector("#divBarCode").classList.add("notblock");
    document.querySelector("#containerGallery").classList.add("notblock");
    document.querySelector("#containerImages").innerHTML = "";
    $('#modalFormProductos').modal('show');

}