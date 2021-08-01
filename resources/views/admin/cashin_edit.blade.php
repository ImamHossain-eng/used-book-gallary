@extends('layouts.admin')
@section('content')
<body>
    <br>
    {{Form::open(['route' => ['admin.cashin_update', $recharge->id], 'method' => 'POST'])}}
    @csrf
    {{method_field('PUT')}}
    <div class="form-group">
        Sender Mobile Number: <a class="btn btn-warning">0{{$recharge->number}}</a>
    </div><br>
    <div class="form-group">
        Recharge Amount: <a class="btn btn-warning">{{$recharge->amount}}</a>
    </div><br>
    <div class="form-group">
        Transaction ID: <a class="btn btn-warning">{{$recharge->trans_id}}</a>
    </div><br>
    <div class="form-group">
        Cash-In via: <a href="#" class="btn btn-warning"> {{$recharge->method}} </a>
    </div><br>
    <div class="form-group">
        <select name="confirmed" id="" class="form-control">
            <option value="null">Confirm Request</option>
            <option value="0">Pending</option>
            <option value="1">Confirm</option>
        </select>
    </div><br>
    <input type="submit" value="Save" class="btn btn-primary">
    {{Form::close()}}
</body>
@endsection