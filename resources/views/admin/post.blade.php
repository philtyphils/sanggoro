@extends('layouts.dashboard')

@section('content')
<!-- SELECT2 EXAMPLE -->
<div class="card card-primary">
  <div class="card-header">
    <h3 class="card-title">{{ (isset($data)) ? $data->title : 'Create Post' }}</h3>
    <div class="card-tools">
      <button type="button" class="btn btn-tool" data-card-widget="collapse">
        <i class="fas fa-minus"></i>
      </button>
      <button type="button" class="btn btn-tool" data-card-widget="remove">
        <i class="fas fa-times"></i>
      </button>
    </div>
  </div>
  <!-- /.card-header -->
  <div class="card-body">
    <div class="row">
      <div class="col-md-12">
      @if ($errors->any())
          <div class="alert alert-danger">
              <ul>
                  @foreach ($errors->all() as $error)
                      <li>{{ $error }}</li>
                  @endforeach
              </ul>
          </div>
      @endif
        <!-- form start -->
        <form action="{{ URL::to('/post/do') }}" method="POST">
        @csrf
        <input type="hidden" name="id" class="form-control" value="{{ (isset($data)) ? $data->id : '000' }}" autocomplete=”off” >
    
        <input type="hidden" name="action" class="form-control" value="{{ (isset($data)) ? 'edit' : 'add' }}" autocomplete=”off” >
            <div class="card-body">
              <div class="form-group">
                <label for="title">Title</label>
                <input type="text" name="title" class="form-control" id="title" value="{{  (isset($data)) ? $data->title : '' }}" autocomplete=”off” >
              </div>
              <div class="form-group">
                <label for="meta_keyword">Meta Keyword</label>
                <input type="text" name="meta_keywords" class="form-control" id="meta_keyword" value="{{  (isset($data)) ? $data->meta_keywords : '' }}" autocomplete=”off” >
              </div>
              <div class="form-group">
                <label for="meta_description">Meta Description</label>
                <input type="text" name="meta_description" class="form-control" id="meta_description" value="{{  (isset($data)) ?  $data->meta_description : '' }}" autocomplete=”off” >
              </div>
              <div class="form-group">
                <label for="content">Content</label>
                <textarea id="summernote" name="content">
                    {{  (isset($data)) ? $data->content : '' }}
                </textarea>
              </div>
              <div class="form-group">
                  <label>Tags</label>
                  <select class="select2bs4" name="tag[]" multiple="multiple" data-placeholder="Select a tag"
                          style="width: 100%;">
                    @php
                      $tagexist = array()
                    @endphp

                    @if(isset($data))
                      @foreach($data->tags as $tag_exist)                    
                        @php
                          $tagexist[] = $tag_exist->id
                        @endphp
                      @endforeach
                    @endif

                    @foreach($tag as $tag)
                      @if(in_array($tag->id,$tagexist))
                      <option value="{{ $tag->id }}" selected>#{{ $tag->name }}</option>
                      @else
                      <option value="{{ $tag->id }}">#{{ $tag->name }}</option>
                      @endif
                    @endforeach
                  </select>
                </div>
              <div class="form-group">
                <label for="status">Status</label>
                @if(isset($data) && $data->status == "Y")
                  <input type="checkbox" name="status" checked data-bootstrap-switch data-off-color="danger" data-on-color="success">
                @else
                  <input type="checkbox" name="status" data-bootstrap-switch data-off-color="danger" data-on-color="success">
                @endif
    
              
              </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
      </div>
    </div>
  </div>
  <!-- /.card-body -->
  <div class="card-footer">
    Visit <a href="https://select2.github.io/">Select2 documentation</a> for more examples and information about
    the plugin.
  </div>
</div>
<!-- /.card -->
@endsection