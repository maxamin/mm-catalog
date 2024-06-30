{{-- 
This file is part of MM2 project. 
--}}
@extends('layouts.master')

@section('title', (!empty($title) ? $title . ' :: ' : '') . __('layout.Catalog'))

@section('content')
    <div class="alert alert-info">
        {!! __('catalog.Welcome') !!}
    </div>

    {{-- rand() for fight with fishing, should be removed later --}}
    <div class="{{ rand(1, 99999) }} alert alert-warning {{ rand(1, 99999) }}">
        <h4>Запишите официальные зеркала проекта</h4>
        <a href="http://tobechanged</b></a><br />
        <a href="http://tobechanged</b></a><br />
        <a href="http://tobechanged</b></a><br />
        <a href="http://tobechanged</b></a>
    </div>

    <div class="row">
        <div class="col-sm-7 col-md-5 col-lg-5">
            @include('catalog.sidebar')
        </div> <!-- /.col-sm-7 -->

        <div class="col-sm-17 col-md-19 col-lg-19 animated fadeIn">
            @include('catalog.components.component-search')
            @if(count($goods) > 0)
                @foreach($goods->chunk(4) as $chunk)
                    <div class="row">
                        @foreach($chunk as $good)
                            @include('layouts.components.component-card', ['good' => $good])
                        @endforeach
                    </div>
                @endforeach
                @if ($goods->total() > $goods->perPage())
                    <hr class="small" />
                    <div class="text-center">
                        {{ $goods->appends(request()->input())->links() }}
                    </div>
                    <hr class="small" />
                @endif
            @else
                <div class="alert alert-info">{{ __('catalog.No good matched your criteria') }}</div>
            @endif
        </div> <!-- /.col-sm-9 -->
    </div> <!-- /.row -->
@endsection