/**
 * Se conecta con la API, para guardar los datos del nuevo usuario en la BD
 * @author marvinlinares
 */
 var form = document.getElementById('crearProductoForm');
 form.addEventListener('submit', function (e) {
     e.preventDefault(); 
     var datos = new FormData(form);
 
     var requestOptions = {
         method: 'POST',
         body: datos,
         redirect: 'follow'
     };
 
     fetch(`http://localhost:8000/api/productos`, requestOptions)
         .then(response => response.json())
         .then(data => {
             if (data.Hecho) {
                 location.href = 'http://localhost:8000/productos';
                 console.log(data)
             }
         })
         .catch(e => {
             let msg = e.statusText || "Ocurrió un error con el servidor.";
             toastr.error(msg);
         })
 });