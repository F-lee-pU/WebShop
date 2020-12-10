<template>
    <div>
        <nav-menu></nav-menu>
        <search-bar></search-bar>
        <div id="main">
            <div>
                <aside-menu></aside-menu>
                <carousel></carousel>
            </div>
        </div>
        <hot-product></hot-product>
        <promise></promise>
    </div>
</template>
<script>
import NavMenu from '../components/NavMenu'
import Promise from '../components/Promise'
import SearchBar from '../components/SearchBar'
import AsideMenu from '../components/AsideMenu'
import Carousel from '../components/Carousel'
import hotProduct from '../components/hotProduct'
import '../assets/css/view/index.css'
export default {
    components:{
        NavMenu,Promise,SearchBar,AsideMenu,Carousel,hotProduct
    }
}
</script>