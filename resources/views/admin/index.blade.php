@extends('layouts.dashboard')

@section('content')
<div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div class="card card-outline card-info">
        <div class="card-header">
          <h3 class="card-title">
            Summernote
          </h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <a href="/post/" target="_blank" class="btn btn-danger btn-sm"><i class="fas fa-plus"></i> Create Post</a>
          <table id="example1" class="table table-bordered table-striped">
            <thead>
            <tr>
              <th width="20px" style="text-align:center">No</th>
              <th style="text-align:center">Judul</th>
              <th style="text-align:center">Tgl. Terbit</th>
              <th style="text-align:center">Status</th>
              <th style="text-align:center">Action</th>
            </tr>
            </thead>
            <tbody>
            
          
            </tbody>
          </table>
        </div>
    </div>
    <!-- /.col-->
  </div>     
</div><!--/. container-fluid -->
@endsection
