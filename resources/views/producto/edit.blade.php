@extends('layouts.app')

@section('template_title')
    Update Producto
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="">
            <div class="col-md-12">

                @includeif('partials.errors')

                <div class="card card-default">
                    <div class="card-header">
                        <span class="card-title">Update Producto</span>
                    </div>
                    <div class="card-body">
                        <form id="editarProductoForm" method="POST" role="form" enctype="multipart/form-data">
                            {{ method_field('PATCH') }}
                            @csrf
                            
                            @include('producto.form',['modo'=>'Editar'])

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="{{ asset('js/productos/editarProducto.js')}}"></script>
@endsection
