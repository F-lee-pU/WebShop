<template>
    <div>
        <nav-menu></nav-menu>
        <search-bar></search-bar>
        <div id="list">
            <div class="list">
                <div class="item" v-for="(item,index) of productList" :key="index">
                    <router-link :to="`/details/${item.pid}`">
                        <div>  
                            <img :src="item.image">
                        </div>
                        <h4 v-text="item.title"></h4>
                    </router-link>
                    <p class="info">
                        <span class="price" v-cloak><em>￥</em>{{item.price}}</span>
                        <span class="saled" v-cloak>销量:{{item.hot}}</span>
                    </p>
                </div>
            </div>
            <div class="page">
                <el-pagination
                    background
                    layout="prev, pager, next"
                    :total="this.pagecount*10"
                    :hide-on-single-page="hide"
                    :current-page="page"
                    @current-change="ChangePage">
                </el-pagination>
            </div>
        </div>
        <promise></promise>
    </div>
</template>
<script>
import '../assets/css/view/list.css'
import NavMenu from '../components/NavMenu'
import SearchBar from '../components/SearchBar'
import Promise from '../components/Promise'
export default {
    data(){
        return{
            page:1,
            hide:false,
            pagecount:0,
            productList:[]
        }
    },
    components:{
        SearchBar,NavMenu,Promise
    },
    mounted(){
        this.onload();
    },
    methods:{
        onload(){
            let cid=this.$route.params.cid;
            if(cid=="all"){
                this.axios.get('/listAll?page='+this.page).then(result=>{
                    this.productList=result.data.results;
                    this.pagecount=result.data.pagecount;
                    if(result.data.pagecount==1){
                        this.hide=true;
                    }
                });
            }else{
                this.axios.get('/list?cid='+cid+'&page='+this.page).then(result=>{
                    this.productList=result.data.results;
                    this.pagecount=result.data.pagecount;
                    if(result.data.pagecount==1){
                        this.hide=true;
                    }
                });
            }
        },
        ChangePage(value){
            this.page=value;
            this.onload();
        }
    }
}
</script>