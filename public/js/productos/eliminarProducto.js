/**
 * Se conecta con la API, para eliminar el registro seleccionado
 * @author marvinlinares
 */
 var myToken = document.cookie.replace(/(?:(?:^|.*;\s*)token\s*\=\s*([^;]*).*$)|^.*$/, "$1");

 function eliminar(id) {
     alertify.confirm('Confirmación', '¿Está seguro que desea eliminar este producto?',
         function () {
 
             var requestOptions = {
                 method: 'DELETE',
                 redirect: 'follow'
             };
 
             fetch(`http://localhost:8000/api/productos/${id}`, requestOptions)
                 .then(res => res.json())
                 .then(data => {
                     console.log(data);
                     if (data.Hecho) {
                        location.reload();
                     }
                 })
         },
         function () {
             toastr.info('Acción cancelada.')
         }
     );
 }