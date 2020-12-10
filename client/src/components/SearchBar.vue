<template>
    <div id="searchBar">
        <div>
            <router-link to="/">logo</router-link>
        </div>
        <el-input
            v-model="search" 
            placeholder="请输入你想查找的商品" 
            clearable>
            <el-button slot="append" icon="el-icon-search" @click="Search"></el-button>
        </el-input>
        <div>
            <router-link to="/list/all">
                <i class="el-icon-s-goods"></i>
                所有商品
            </router-link>
            <router-link to="/">
                <i class="el-icon-phone"></i>
                在线客服
            </router-link>
        </div>
    </div>
</template>
<script>
import '../assets/css/component/searchBar.css'
export default {
    data(){
        return{
            search:'',
            product:[]
        }
    },
    mounted(){
        this.axios.get('/search').then(result=>{
            this.product=result.data.results;
        });
    },
    methods:{
        Search() {
            let search=this.search.toLowerCase();
            if(search){
                let result = this.product.filter(item=>item.title.toLowerCase().indexOf(search) != -1);
                if(result.length>0){
                    this.$router.push(`/details/${result[0].pid}`).catch(e=>{});
                }else{
                    this.$message({
                        message:'抱歉,没找到这件商品，请换个关键词',
                        type:'warning',
                        showClose:true
                    });
                }
                if(this.$route.path==`/details/${result[0].pid}`){
                    this.$router.go(0);
                }
            }else{
                this.$router.push('/list/all').catch(e=>{});
            }
        }
    }
}
</script>