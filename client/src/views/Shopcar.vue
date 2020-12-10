<template>
    <div>
        <nav-menu></nav-menu>
        <search-bar></search-bar>
        <div id="shopcar">
            <div class="emptyCar" v-if="carList.length==0">
                <span>购物车空空如也，<router-link to="/list/all">快去添加你喜欢的商品吧>></router-link></span>
            </div>
            <div class="carList" v-else>
                <div>
                    已选商品
                </div>
                <div>
                    <div>
                        <input type="checkbox" @click="checkedAll" v-model="checkAll">全选
                    </div>
                    <div>
                        商品信息
                    </div>
                    <div>
                        单价
                    </div>
                    <div>
                        数量
                    </div>
                    <div>
                        金额
                    </div>
                    <div>
                        操作
                    </div>
                </div>
                <div v-for="(item,index) of carList" :key="index" class="item">
                    <div class="productInfo">
                        <div class="choise">
                            <input v-model="checkModel" type="checkbox" :value="item.pid">
                        </div>
                        <div class="productImage">
                            <img :src="item.image">
                        </div>
                        <div class="title">
                            <router-link v-text="item.title" :to="`/details/${item.pid}`"></router-link>
                        </div>
                        <div class="price">
                            <span v-cloak>￥{{item.price.toFixed(2)}}</span>
                        </div>
                        <div class="number">
                            <el-input-number v-model="item.number" :min="1" :max="item.stock" @change="updateNum" @blur="uploadNum" :data-id="item.pid"></el-input-number>
                        </div>
                        <div class="money">
                            <span v-cloak>￥{{(item.price*item.number).toFixed(2)}}</span>
                        </div>
                        <div class="control">
                            <span @click="remove" :data-id="item.pid">删除</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="total" :style="{'position':scroll,'top':top}" v-show="carList.length!==0">
            <div><span @click="deleteAll">删除全部</span></div>
            <div>总价：<span v-cloak>￥{{total.toFixed(2)}}</span></div>
        </div>
        <promise></promise>
    </div>
</template>
<script>
import '../assets/css/view/shopcar.css'
import NavMenu from '../components/NavMenu'
import SearchBar from '../components/SearchBar'
import Promise from '../components/Promise'
export default {
    components:{
        SearchBar,NavMenu,Promise
    },
    data(){
        return{
            carList:[{price:0,number:1}],
            checkAll:false,
            checkModel:[],
            total:0,
            scroll:'fixed',
            top:'680px'
        }
    },
    mounted(){
        let uid=this.$store.state.userId;
        this.axios.get('/shopcar?uid='+uid).then(result=>{
            if(result.data.code==1){
                this.carList=result.data.results;
            }else{
                this.carList=[];
            }
        });
        window.addEventListener('scroll',this.Scroll)
    },
    watch:{
        checkModel(){
            if(this.checkModel.length==this.carList.length){
                let money=0;
                this.checkAll=true;
                this.carList.forEach(item=>{
                    money+=item.price*item.number;
                });
                this.total=money;
            }else if(this.checkModel.length==0){
                this.checkAll=false;
                this.total=0;
            }else{
                let money=0;
                this.checkAll=false;
                for(var id of this.checkModel){
                    this.carList.forEach(item=>{
                        if(item.pid==id){
                            money+=item.price*item.number;
                        }
                    })
                };
                this.total=money;
            }
        }
    },
    methods:{
        remove(e){
            if(confirm('你确定要删除该购物车吗')){
                let pid=e.target.getAttribute('data-id');
                this.axios.delete('/deletePro?pid='+pid).then(result=>{
                    if(result.data.code==1){
                        this.$message({
                            message:result.data.message,
                            type:'success',
                            showClose:true,
                            center:true
                        });
                        this.$router.go(0);
                    }
                });
            }
        },
        deleteAll(){
            if(confirm('你确定要删除所有购物车吗')){
                this.axios.delete('/deleteAll').then(result=>{
                    if(result.data.code==1){
                        this.$message({
                            message:result.data.message,
                            type:'success',
                            showClose:true,
                            center:true
                        });
                        this.$router.go(0);
                    }
                });
            }
        },
        checkedAll(){
            if(this.checkAll){
                this.checkModel=[];
            }else{
                this.carList.forEach(item=>{
                    if(this.checkModel.indexOf(item.pid)==-1){
                        this.checkModel.push(item.pid);
                    }
                });
            }
        },
        Scroll(){
            let total=document.getElementById('total');
            let totalScrollTop = total.scrollTop || document.body.scrollTop || window.pageYOffset;
            let ScrollHeight = document.documentElement.scrollHeight || document.body.scrollHeight;
            let windowHeight = document.documentElement.clientHeight || document.body.clientHeight;
            let totalBottom=ScrollHeight-windowHeight-totalScrollTop;
            if(totalBottom<350){
                this.scroll='absolute';
                this.top=186.8+this.carList.length*242+'px';
            }else{
                this.scroll='fixed';
                this.top='680px'
            }
        },
        updateNum(currentValue, oldValue){
            let e = (window.event||arguments[0]);
            var pid;
            if(typeof(e)==="number"){
                
            }else{
                let element=e.target;
                if(element.nodeName=='I'){
                    pid=element.parentElement.parentElement.getAttribute('data-id');
                }else if(element.nodeName=='SPAN'){
                    pid=element.parentElement.getAttribute('data-id');
                }
            }
            let uid=this.$store.state.userId;
            let number=currentValue;
            this.axios.put('/updateNum?pid='+pid+'&number='+number+'&uid='+uid).then(result=>{});
        },
        uploadNum(e){
            let uid=this.$store.state.userId;
            let pid=e.target.parentElement.parentElement.getAttribute('data-id');
            let number=e.target.getAttribute('aria-valuenow');
            this.axios.put('/updateNum?pid='+pid+'&number='+number+'&uid='+uid).then(result=>{});
        }
    }
}
</script>