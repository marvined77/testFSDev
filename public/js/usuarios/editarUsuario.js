/**
 * Se conecta con la API, para guardar los datos del nuevo usuario en la BD
 * @author marvinlinares
 */
 var form = document.getElementById('editarUsuarioForm');
 var id = document.getElementById('id');
 form.addEventListener('submit', function (e) {
     e.preventDefault();
 
     var datos = new FormData(form);
    nombre=datos.get('nombre');
    telefono=datos.get('telefono');
    username=datos.get('username');
    fecha=datos.get('fecha_nacimiento');
    email=datos.get('email');
    password=datos.get('password');
     var requestOptions = {
         method: 'PUT',
         redirect: 'follow'
     };
 
     fetch(`http://localhost:8000/api/usuarios/${id.value}?nombre=${nombre}&telefono=${telefono}&username=${username}&fecha_nacimiento=${fecha}&email=${email}&password=${password}`, requestOptions)
         .then(response => response.json())
         .then(data => {
             console.log(data);
             if (data.Hecho) {
                 location.href = 'http://localhost:8000/usuarios';
             }
         })
         .catch(e => {
             let msg = e.statusText || "Ocurrió un error con el servidor.";
             toastr.error(msg);
         })
 });