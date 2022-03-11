/**
 * Se conecta con la API, para guardar los datos del nuevo usuario en la BD
 * @author marvinlinares
 */
 var form = document.getElementById('editarProductoForm');
 var id = document.getElementById('id');
 form.addEventListener('submit', function (e) {
     e.preventDefault();
 
     var datos = new FormData(form);
    sku=datos.get('SKU');
    nombre=datos.get('nombre');    
    cantidad=datos.get('cantidad');
    precio=datos.get('precio');
    descripcion=datos.get('descripcion');
     var requestOptions = {
         method: 'PUT',
         redirect: 'follow'
     };
 
     fetch(`http://localhost:8000/api/productos/${id.value}?sku=${sku}&nombre=${nombre}&cantidad=${cantidad}&precio=${precio}&descripcion=${descripcion}`, requestOptions)
         .then(response => response.json())
         .then(data => {
             console.log(data);
             if (data.Hecho) {
                 location.href = 'http://localhost:8000/productos';
             }
         })
         .catch(e => {
             let msg = e.statusText || "Ocurrió un error con el servidor.";
             toastr.error(msg);
         })
 });