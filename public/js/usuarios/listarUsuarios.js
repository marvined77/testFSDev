/**
 * Se conecta con la API, para traer el listado de registros almacenados en la BD.
 * Genera el contenido de la etiqueta tbody, para ser mostrados en una tabla
 * Se genera una datatable con los registros de la BD.
 * @author marvinlinares
 */
 let element = document.getElementById('listaUsuarios');
 
 var requestOptions = {
    method: 'GET',
    redirect: 'follow'
  };
  
  fetch("http://localhost:8000/api/usuarios", requestOptions)
    .then(response => response.json())
    .then(result => {
        result.forEach(usuario => {
            let td = document.createElement('tr');
            td.innerHTML = `<td class="align-middle">${usuario.id}</td>
                            <td class="align-middle">${usuario.nombre}</td>
                            <td class="align-middle">${usuario.telefono}</td>
                            <td class="align-middle">@${usuario.username}</td>
                            <td class="align-middle">${usuario.fecha_nacimiento}</td>
                            <td class="align-middle">${usuario.email}</td>
                            <td class="align-middle">
                                <div class="btn-group btn-group-sm">
                                    <a class="btn btn-sm btn-primary " href="usuarios/${usuario.id}"><i class="fa fa-fw fa-eye"></i> Ver</a>
                                    <a class="btn btn-sm btn-success" href="usuarios/${usuario.id}/edit"><i class="fa fa-fw fa-edit"></i> Editar</a>
                                    <a href="#" onclick="eliminar('${usuario.id}');" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> Eliminar</a>
                                </div>
                            </td>`;
            element.appendChild(td);
        });
    })
    .catch(error => console.log('error', error));