@extends('layouts.app')

@section('template_title')
    Create Producto
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <span class="card-title">Create Producto</span>
                    </div>
                    <div class="card-body">
                        <form id="crearProductoForm" method="POST" role="form" enctype="multipart/form-data">
                            @csrf

                            @include('producto.form',['modo'=>'Crear'])

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="{{ asset('js/productos/crearProducto.js')}}"></script>
@endsection
