@extends('layouts.base')
@section('contenido')

<div class="col-md-6 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Crear Género <small></small></h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">Settings 1</a>
                  </li>
                  <li><a href="#">Settings 2</a>
                  </li>
                </ul>
              </li>
              <li><a class="close-link"><i class="fa fa-close"></i></a>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <br />
            <form class="form-horizontal form-label-left" id="feedback_form" method="POST" action="/genero">
                {!! csrf_field() !!}

              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12">Género </label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                  <input type="text" class="form-control" placeholder="Genero Nuevo" name="nombre">
                </div>
              </div>

              <div class="ln_solid"></div>
              <div class="form-group">
                <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                  
                    <button type="submit" class="btn btn-success">Guardar</button>
                  <button type="button" class="btn btn-primary">Cancelar</button>
                  
                </div>
              </div>

            </form>
          </div>
        </div>
      </div>

      @endsection