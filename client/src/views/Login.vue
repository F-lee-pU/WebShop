<template>
    <div id="login">
        <div class="brand">
            <router-link to="/">
                <span>拾金商城</span>
            </router-link>
        </div>
        <div class="container">
            <div>
                <div class="form">
                    <el-tabs v-model="activeName">
                        <el-tab-pane label="用户名登录" name="name">
                            <div class="uname-login">
                                <el-input v-model="uname" prefix-icon="el-icon-user-solid" placeholder="请输入登录名" clearable></el-input>
                                <el-input v-model="password" prefix-icon="el-icon-unlock" placeholder="请输入密码" clearable show-password></el-input>
                                <button class="btn-login" :disabled="uname==''?true:password==''?true:false" @click="unameLogin">登录</button>
                                <div>
                                    <router-link to="/login" class="forget">忘记密码?</router-link>   
                                </div>
                            </div>  
                        </el-tab-pane>
                        <el-tab-pane label="手机登录" name="tel">
                            <div class="phone-login">
                                <el-input v-model="phone" prefix-icon="el-icon-mobile-phone" placeholder="请输入手机号" clearable></el-input>
                                <el-input v-model="phonePwd" prefix-icon="el-icon-chat-dot-round" placeholder="请输入密码" clearable></el-input>
                                <button class="btn-login" :disabled="phone==''?true:phonePwd==''?true:false" @click="phoneLogin">登录</button>
                            </div>
                        </el-tab-pane>
                    </el-tabs>
                    <div class="form-footer">
                        <ul>
                            <li>
                                <img src="../../public/images/QQ.png">
                                <span>QQ</span>
                            </li>
                            <li>
                                <img src="../../public/images/zfb.png">
                                <span>支付宝</span>
                            </li>
                            <li>
                                <router-link to="/register">免费注册<i class="el-icon-arrow-right"></i></router-link>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import '../assets/css/view/login.css'
export default {
    data(){
        return{
            uname:'',
            password:'',
            phone:'',
            phonePwd:'',
            activeName: 'name'
        }
    },
    methods:{
        unameLogin(){
            this.axios.get('/unameLogin?uname='+this.uname+'&password='+this.password).then(result=>{
                if(result.data.code==1){
                    sessionStorage.clear();
                    let user=result.data.result[0];
                    this.$store.commit("login",user);
                    this.$message({
                        message:result.data.message,
                        offset:300,
                        center:true,
                        type:'success',
                        duration:1000
                    });
                    this.$router.push('/').catch(e=>{});
                }else{
                    this.$message({
                        message:result.data.message,
                        offset:300,
                        center:true,
                        type:'error',
                        showClose:true
                    });
                }
            });
        },
        phoneLogin(){
            this.axios.get('/phoneLogin?phone='+this.phone+'&password='+this.phonePwd).then(result=>{
                if(result.data.code==1){
                    sessionStorage.clear();
                    let user=result.data.result[0];
                    this.$store.commit("login",user);
                    this.$message({
                        message:result.data.message,
                        offset:300,
                        center:true,
                        type:'success',
                        duration:1000
                    });
                    this.$router.push('/').catch(e=>{});
                }else{
                    this.$message({
                        message:result.data.message,
                        offset:300,
                        center:true,
                        type:'error',
                        showClose:true
                    });
                }
            });
        }
    }
}
</script>