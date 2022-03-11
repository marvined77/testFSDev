@extends('layouts.app')

@section('template_title')
    Usuario
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Usuario') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('usuarios.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Nuevo usuario') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif

                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="dtLista" class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>id</th>
                                        
										<th>Nombre</th>
										<th>Teléfono</th>
										<th>Username</th>
										<th>Fecha Nacimiento</th>
										<th>Email</th>

                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody id="listaUsuarios">

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="{{ asset('js/usuarios/listarUsuarios.js')}}"></script>
    <script src="{{ asset('js/usuarios/eliminarUsuario.js')}}"></script>
@endsection
