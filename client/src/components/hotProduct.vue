<template>
    <div id="hot">
        <div>
            <div class="title">优品推荐</div>
            <div class="list">
                <div class="item" v-for="(item,index) of products" :key="index">
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
        </div>
    </div>
</template>
<script>
import '../assets/css/component/hotProduct.css'
export default {
    data(){
        return{
            products:[]
        }
    },
    mounted(){
        this.axios.get('/hotProduct').then(result=>{
            this.products=result.data.results;
        });
    }
}
</script>