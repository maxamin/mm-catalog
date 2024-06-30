<?php use App\User; ?>
<!-- layouts/navbar/user-left -->
<style>
    .navbar-dropdown .dropdown-menu>li>a {
        padding: 5px 10px;
    }
    .navbar-dropdown .dropdown-menu>li>a>i {
        top: 2px;
        padding-right: 3px;
    }
</style>
<ul class="nav navbar-nav navbar-dropdown">
    <li class="{{ $page === 'catalog' ? 'active' : '' }}"><a href="/catalog">{{ __('layout.Catalog') }}</a></li>
    <li class="{{ $page === 'shops' ? 'active' : '' }}"><a href="/shops">{{ __('layout.Shops') }}</a></li>
    <?php $count = Auth::user()->activeOrdersCount(); ?>
    <li class="{{ $page === 'orders' ? 'active' : '' }}"><a href="/orders?status={{ $count > 0 ? 'active' : '' }}">{{ __('layout.Orders') }} @if($count > 0)<span class="badge red">{{ $count }}</span>@endif</a></li>
    <li class="{{ $page === 'balance' ? 'active' : '' }}"><a href="/balance">{{ __('layout.Balance') }}</a></li>
    <?php $count = Auth::user()->unreadNewsCount(); ?>
    <li class="{{ $page === 'news' ? 'active' : '' }}"><a href="/news">{{ __('layout.News') }} @if($count > 0)<span class="badge red">{{ $count }}</span>@endif</a></li>
    <li class="{{ (isset($page) && $page === 'rules') ? 'active' : '' }}"><a href="/pages/rules">{{ __('layout.Rules') }}</a></li>
    @if(Auth::user()->isAdmin())
        <li class="{{ $page === 'admin' ? 'active' : '' }}"><a href="/admin">{{ __('admin.Admin') }}</a></li>
    @endif
    <li class="dropdown">
        <a href="#">Форум <span class="caret"></span></a>
        <ul class="dropdown-menu orange" role="menu">
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://tobechanged</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://tobechanged</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://tobechanged</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://tobechanged</a></li>
        </ul>
    </li>
</ul>
<!-- / layouts/navbar/user-left -->