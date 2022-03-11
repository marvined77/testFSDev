/**
 * Se conecta con la API, para traer el listado de registros almacenados en la BD.
 * Genera el contenido de la etiqueta tbody, para ser mostrados en una tabla
 * Se genera una datatable con los registros de la BD.
 * @author marvinlinares
 */
 let element = document.getElementById('listaProductos');
 
 var requestOptions = {
    method: 'GET',
    redirect: 'follow'
  };
  
  fetch("http://localhost:8000/api/productos", requestOptions)
    .then(response => response.json())
    .then(result => {
        result.forEach(producto => {
            let td = document.createElement('tr');
            td.innerHTML = `<td class="align-middle">${producto.id}</td>
                            <td class="align-middle">${producto.SKU}</td>
                            <td class="align-middle">${producto.nombre}</td>
                            <td class="align-middle">${producto.cantidad}</td>
                            <td class="align-middle">$${producto.precio}</td>
                            <td class="align-middle">${producto.descripcion}</td>
                            <td class="align-middle">
                                <div class="btn-group btn-group-sm">
                                    <a class="btn btn-sm btn-primary " href="productos/${producto.id}"><i class="fa fa-fw fa-eye"></i> Ver</a>
                                    <a class="btn btn-sm btn-success" href="productos/${producto.id}/edit"><i class="fa fa-fw fa-edit"></i> Editar</a>
                                    <a href="#" onclick="eliminar('${producto.id}');" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> Eliminar</a>
                                </div>
                            </td>`;
            element.appendChild(td);
        });
    })
    .catch(error => console.log('error', error));