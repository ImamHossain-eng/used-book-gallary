@extends('layouts.user')
@section('content')
<body>
    <div class="card">
        <div class="card-header">
            <h3> {{$post->book_name}} </h3>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <h6>User: {{$post->user->name}} </h6>
                </div>
                <div class="col-md-6">
                    <h6>Contact: {{$post->number}} </h6>
                </div>
            </div>
            <br>
            <i class="fa fa-clock"> {{$post->created_at}}</i>
            <br>
            {!!$post->body!!}
        </div>
    </div>
</body>
@endsection