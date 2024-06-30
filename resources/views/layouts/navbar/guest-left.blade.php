<!-- layouts/navbar/guest-left -->
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
    {{--
    <li class="active"><a href="#"><i class="fa fa-shopping-cart fa-fw"></i> Product</a></li>
    <li><a href="#"><i class="fa fa-asterisk fa-fw"></i> Promotion</a></li>
    <li><a href="#"><i class="fa fa-book fa-fw"></i> Lookbook</a></li>
    <li><a href="#"><i class="fa fa-archive fa-fw"></i> Blog</a></li>
    <li><a href="#"><i class="fa fa-phone fa-fw"></i> About us</a></li>
    --}}
    <li class="{{ (isset($page) && $page === 'catalog') ? 'active' : '' }}"><a href="/catalog">{{ __('layout.Catalog') }}</a></li>
    <li class="{{ (isset($page) && $page === 'shops') ? 'active' : '' }}"><a href="/shops">{{ __('layout.Shops') }}</a></li>
    <li class="{{ (isset($page) && $page === 'news') ? 'active' : '' }}"><a href="/news">{{ __('layout.News') }}</a></li>
    <li class="{{ (isset($page) && $page === 'rules') ? 'active' : '' }}"><a href="/pages/rules">{{ __('layout.Rules') }}</a></li>
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
<!-- / layouts/navbar/guest-left -->