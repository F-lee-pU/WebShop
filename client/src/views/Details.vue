<template>
    <div>
        <nav-menu></nav-menu>
        <search-bar></search-bar>
        <div id="details">
            <div class="pic_show">
                <div class="loupe">
                    <div>
                        <img :src="`${pics[index].md}`">
                        <div id="mask" :style="maskStyle" :class="{'hide':hide}"></div>
                        <div id="super-mask" @mouseover="toggle" @mouseout="toggle" @mousemove="move"></div>
                    </div>
                    <ul @mouseover="changeIndex">
                        <li v-for="(pic,index) of pics" :key="index">
                            <img :src="`${pic.sm}`" :data-index="index">
                        </li>
                    </ul>
                </div>
                <div>
                    <i class="el-icon-star-on"></i>
                    收藏(<span v-text="productInfo.hot"></span>人气)
                </div>
            </div>
            <div class="info">
                <p v-text="productInfo.title"></p>
                <div>
                    <span>价格 ：</span>
                    <span v-cloak><em>￥</em>{{productInfo.price.toFixed(2)}}</span>
                    <p>官方服务承诺：*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货</p>
                </div>
                <div class="num">
                    <span>数量：</span>
                    <el-input-number v-model="num" :min="1" :max="productInfo.stock"></el-input-number>
                    <span>件</span>
                    <span v-cloak>(库存{{productInfo.stock}}件)</span>
                </div>
                <div class="buy">
                    <button @click="tobuy">立即购买</button>
                    <button @click="putCar"><i class="el-icon-shopping-cart-full"></i>放入购物车</button>
                </div>
            </div>
        </div>
        <div id="pic-lg" :class="{'hide':hide}" :style="{'background-image':`url(${pics[index].lg})`,'background-position':`${-parseInt(maskStyle.left)*2}px ${-parseInt(maskStyle.top)*2}px`}"></div>
        <promise></promise>
    </div>
</template>
<script>
import '../assets/css/view/details.css'
import NavMenu from '../components/NavMenu'
import SearchBar from '../components/SearchBar'
import Promise from '../components/Promise'
export default {
    data(){
        return{
            productInfo:{ price:0,number:0 },
            pics:[{md:'',lg:''}],
            index:0,
            hide:true,
            maskStyle:{
                left:"0",
                top:"0"
            },
            num:1
        }
    },
    components:{
        SearchBar,NavMenu,Promise
    },
    mounted(){
        let pid=this.$route.params.pid;
        this.axios.get('/details?pid='+pid).then(result=>{
            this.productInfo=result.data.results;
        });
        this.axios.get('/proPic?pid='+pid).then(result=>{
            this.pics=result.data.results;
        });
    },
    methods:{
        changeIndex(e){
            if(e.target.nodeName=='IMG'){
                this.index=e.target.dataset.index;
            }
        },
        toggle(){
            this.hide=!this.hide
        },
        move(e){
            let left=e.offsetX-100;
            let top=e.offsetY-100;
            if (left<0) {
                left=0;
            }else if (left>200) {
                left=200
            }
            if (top<0) {
                top=0;
            }else if (top>200) {
                top=200
            }
            this.maskStyle={
                left:left+'px',
                top:top+'px'
            }
        },
        putCar(){
            if(this.$store.state.isLogin==true){
                let pid=this.$route.params.pid;
                this.axios.post('/putCar','pid='+pid+'&number='+this.num+'&uid='+this.$store.state.userId).then(result=>{
                    if(result.data.code==1){
                        this.$message({
                            showClose: true,
                            message: result.data.message,
                            type: 'success'
                        });
                    }                
                });
            }else{
                this.$message({
                    message:'请先登录',
                    type:'error',
                    showClose:true
                });
            }
        },
        tobuy(){
            this.$router.push('/');
        }
    }
}
</script>