@extends('layouts.app')
@section('content')
<body>
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-2">

            </div>
            <div class="col-md-6">
                {{Form::open(['route'=>'post.search', 'method'=>'POST'])}}
                <input type="text" class="form-control" name="book" placeholder="Search by Book Name">
            </div>
            <div class="col-md-4">
                <button class="btn btn-primary" style="width:70%;"><i class="fa fa-search"></i> Search</button>
                {{Form::close()}}
            </div>
        </div>   
    
        <div class="row mb-2">
            @forelse ($posts as $post)
            <div class="col-md-6">
              <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                  <strong class="d-inline-block mb-2 text-success">{{$post->user->name}}</strong>
                  <h3 class="mb-0">{{$post->book_name}}</h3>
                  <div class="mb-1 text-muted">{{$post->created_at->diffForHumans()}}</div>
                  <p class="card-text mb-auto"><i class="fa fa-clock-o"></i> {{ date('F d, Y(D)', strtotime($post->created_at))}} at {{ date('g:ia', strtotime($post->created_at))}}</p>
                  <div class="mb-1 text-muted">
                      {!!$post->body!!}
                  </div>
                  <a href="/post/{{$post->id}}" class="stretched-link btn btn-primary">Show Details</a>
                </div>
                <div class="col-auto d-none d-lg-block">
                  <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
        
                </div>
              </div>
            </div>
            @empty
            <div class="container-fluid">
                <div class="text-warning">
                    No Post
                </div>
            </div>
                
            @endforelse
        
            {{$posts->links()}}
          </div>
    </div>
</body>
  @endsection