<template>
    <div id="navbar">
        <div>
            <p>
                <img src="../../public/images/home.png">
                <router-link to="/">拾金首页</router-link>
            </p>
            <p class="loginInfo">
                <em>欢迎来到拾金商城</em>
                <router-link to="/login" v-if="this.$store.state.isLogin==false">请登录</router-link>
                <router-link to="/" v-cloak v-else>欢迎：{{this.$store.state.userName}}</router-link>
                <router-link to="/register" v-if="this.$store.state.isLogin==false">免费注册</router-link>
                <em @click="logout" v-else>退出登录</em>
            </p>
            <el-menu background-color="#f2f2f2" mode="horizontal" class="el-menu">
                <el-submenu index="1">
                    <template slot="title">我的拾金</template>
                    <el-menu-item index="2-1">
                        <router-link to="/">已买到的宝贝</router-link>
                    </el-menu-item>
                    <el-menu-item index="2-2">
                        <router-link to="/">已卖到的宝贝</router-link>
                    </el-menu-item>
                </el-submenu>
                <el-menu-item index="2">
                    <img src="../../public/images/shopcar.png">
                    <router-link to="/shopcar">购物车</router-link>
                </el-menu-item>
                <el-submenu index="3">
                    <template slot="title">收藏夹</template>
                    <el-menu-item index="3-1">
                        <router-link to="/">收藏的宝贝</router-link>
                    </el-menu-item>
                    <el-menu-item index="3-2">
                        <router-link to="/">收藏的店铺</router-link>
                    </el-menu-item>
                </el-submenu><el-submenu index="4">
                    <template slot="title">商务合作</template>
                    <el-menu-item index="4-1">
                        <router-link to="/">收购网站</router-link>
                    </el-menu-item>
                    <el-menu-item index="4-2">
                        <router-link to="/">收购本人</router-link>
                    </el-menu-item>
                </el-submenu>
            </el-menu>
        </div>
    </div>
</template>
<script>
import '../assets/css/component/navMenu.css'
export default {
    methods:{
        logout(){
            if(confirm('你确定要退出登录吗?')){
                this.$store.commit("logout");
                this.$router.push('/').catch(e=>{});
            }
        }
    }
}
</script>