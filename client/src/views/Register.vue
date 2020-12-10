<template>
    <div id="register">
        <el-steps :active="active" finish-status="success">
            <el-step title="注册协议"></el-step>
            <el-step title="设置用户名"></el-step>
            <el-step title="填写账号信息"></el-step>
            <el-step title="注册成功"></el-step>
        </el-steps>
        <div v-show="active==0" class="agreement">
            <h3>注册协议</h3>
            <p><strong>【审慎阅读】</strong>您在申请注册流程中点击同意前，应当认真阅读以下协议。<strong style="text-decoration: underline">请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：</strong></p>
            <p>1、<strong style="text-decoration: underline">与您约定免除或限制责任的条款；</strong></p>
            <p>2、<strong style="text-decoration: underline">与您约定法律适用和管辖的条款；</strong></p>
            <p>3、<strong style="text-decoration: underline">其他以粗体下划线标识的重要条款。</strong></p>
            <p>如您对协议有任何疑问，可向平台客服咨询。</p>
            <p><strong>【特别提示】</strong>当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。如您因平台服务与拾金发生争议的，适用《拾金平台服务协议》处理。如您在使用平台服务过程中与其他用户发生争议的，依您与其他用户达成的协议处理。</p>
            <p><strong style="text-decoration: underline">阅读协议的过程中，如果您不同意相关协议或其中任何条款约定，您应立即停止注册程序。</strong></p>
            <p><router-link to="/register">拾金平台服务协议</router-link></p>
            <p><router-link to="/register">隐私权政策</router-link></p>
            <p><router-link to="/register">法律声明</router-link></p>
            <p><router-link to="/register">支付宝及客户端服务协议</router-link></p>
            <p><button @click="agree">同意协议</button></p>
        </div>
        <div v-show="active==1" class="user-name">
            <div>
                <span>手机号</span>
                <el-input placeholder="请输入内容" v-model="phone" class="input-with-select" @blur="phoneCheck">
                    <el-select v-model="select" slot="prepend">
                        <el-option label="中国大陆  +86" value="1"></el-option>
                        <el-option label="中国台湾  +886" value="2"></el-option>
                        <el-option label="中国香港  +852" value="3"></el-option>
                    </el-select>
                </el-input>
                <div>
                    <i :class="phoneIcon"></i>
                    <span :class="phoneClass" v-cloak>{{phoneClass.msg}}</span>
                </div>
            </div>
            <div>
                <span>验证码</span>
                <el-input placeholder="请输入内容" v-model="codePhone" @blur="codePhoneCheck">
                    <el-button slot="append" v-text="sendCode"></el-button>
                </el-input>
                <div>
                    <i :class="testIcon"></i>
                    <span :class="testClass" v-cloak>{{testClass.msg}}</span>
                </div>
            </div>
            <div>
                <button @click="next">下一步</button>
            </div>
        </div>
        <div v-show="active==2" class="user-info">
            <div>
                <span>登录名</span>
                <span v-text="phone"></span>
            </div>
            <div>
                <span>请设置登录密码</span>
                <span>登录时验证，保护账号信息</span>
            </div>
            <div>
                <span>登录密码</span>
                <el-input v-model="password" placeholder="设置你的登录密码" @blur="pwdCheck"></el-input>
                <div>
                    <i :class="pwdIcon"></i>
                    <span :class="pwdClass" v-cloak>{{pwdClass.msg}}</span>
                </div>
            </div>
            <div>
                <span>密码确认</span>
                <el-input v-model="surePwd" placeholder="请再次输入您的密码" @blur="surePwdCheck"></el-input>
                <div>
                    <i :class="sureIcon"></i>
                    <span :class="sureClass" v-cloak>{{sureClass.msg}}</span>
                </div>
            </div>
            <div>
                <span>登录名</span>
                <el-input v-model="uname" placeholder="登录名一旦设置成功，无法修改" @blur="unameCheck"></el-input>
                <div>
                    <i :class="unameIcon"></i>
                    <span :class="unameClass" v-cloak>{{unameClass.msg}}</span>
                </div>
            </div>
            <div>
                <button @click="register">注册</button>
            </div>
        </div>
        <div v-show="active==4" class="reg-success">
            <div>
                <p>恭喜，注册成功</p> 
            </div>
            <div>
                <button @click="toLogin">去登录</button>
            </div>
        </div>
    </div>
</template>
<script>
import '../assets/css/view/register.css'
export default {
    data() {
        return {
            active: 0,
            select:'1',
            phone:'',
            codePhone:'',
            sendCode:"发送验证码",
            password:'',
            surePwd:'',
            uname:'',
            phoneIcon:{
                'el-icon-success':false,
                'el-icon-error':false,
                success:false,
                error:false,
            },
            phoneClass:{
                success : false,
                error : false,
                msg : ''
            },
            testIcon:{
                'el-icon-success':false,
                'el-icon-error':false,
                success:false,
                error:false,
            },
            testClass:{
                success : false,
                error : false,
                msg : ''
            },
            pwdIcon:{
                'el-icon-success':false,
                'el-icon-error':false,
                success:false,
                error:false,
            },
            pwdClass:{
                success : false,
                error : false,
                msg : ''
            },
            sureIcon:{
                'el-icon-success':false,
                'el-icon-error':false,
                success:false,
                error:false,
            },
            sureClass:{
                success : false,
                error : false,
                msg : ''
            },
            unameIcon:{
                'el-icon-success':false,
                'el-icon-error':false,
                success:false,
                error:false,
            },
            unameClass:{
                success : false,
                error : false,
                msg : ''
            }
        };
    },
    methods: {
        agree(){
            this.active=1;
        },
        phoneCheck(){
            let reg=/^1[3-9]\d{9}$/;
            if(reg.test(this.phone)){
                this.axios.get('/phoneCheck?phone='+this.phone).then(result=>{
                    if(result.data.code==0){
                        this.phoneIcon={
                            'el-icon-success':false,
                            'el-icon-error':true,
                            success:false,
                            error:true,
                        },
                        this.phoneClass={
                            success : false,
                            error : true,
                            msg : result.data.message
                        }
                    }else{
                        this.phoneIcon={
                            'el-icon-success':true,
                            'el-icon-error':false,
                            success:true,
                            error:false,
                        },
                        this.phoneClass={
                            success: true,
                            error: false,
                            msg : ''
                        }
                    }
                });
            }else{
                this.phoneIcon={
                    'el-icon-success':false,
                    'el-icon-error':true,
                    success:false,
                    error:true,
                },
                this.phoneClass={
                    success : false,
                    error : true,
                    msg : '号码格式不正确'
                }
            }
        },
        codePhoneCheck(){
            let code=this.phone.slice(-4);
            if(this.codePhone==code){
                this.testIcon={
                    'el-icon-success':true,
                    'el-icon-error':false,
                    success:true,
                    error:false,
                },
                this.testClass={
                    success : true,
                    error : false,
                    msg : ''
                }
            }else{
                this.testIcon={
                    'el-icon-success':false,
                    'el-icon-error':true,
                    success:false,
                    error:true,
                },
                this.testClass={
                    success : false,
                    error : true,
                    msg : '验证码不正确'
                }
            }
        },
        next(){
            if(this.phoneClass.success==true&this.testClass.success==true){
                this.active=2;
            }
        },
        pwdCheck(){
            let reg=/^\w{6,16}$/;
            if(reg.test(this.password)){
                this.pwdIcon={
                    'el-icon-success':true,
                    'el-icon-error':false,
                    success:true,
                    error:false,
                },
                this.pwdClass={
                    success : true,
                    error : false,
                    msg : ''
                }
            }else{
                this.pwdIcon={
                    'el-icon-success':false,
                    'el-icon-error':true,
                    success:false,
                    error:true,
                },
                this.pwdClass={
                    success : false,
                    error : true,
                    msg : '密码应为6-16位字母数字和.组成'
                }
            }
        },
        surePwdCheck(){
            if(this.surePwd==this.password){
                this.sureIcon={
                    'el-icon-success':true,
                    'el-icon-error':false,
                    success:true,
                    error:false,
                },
                this.sureClass={
                    success : true,
                    error : false,
                    msg : ''
                }
            }else{
                this.sureIcon={
                    'el-icon-success':false,
                    'el-icon-error':true,
                    success:false,
                    error:true,
                },
                this.sureClass={
                    success : false,
                    error : true,
                    msg : '两次输入的密码不同'
                }
            }
        },
        unameCheck(){
            let reg=/^([\u4e00-\u9fa5]|[A-Za-z0-9]){4,10}$/;
            if(reg.test(this.uname)){
                this.axios.get('/unameCheck?uname='+this.uname).then(result=>{
                    if(result.data.code==0){
                        this.unameIcon={
                            'el-icon-success':false,
                            'el-icon-error':true,
                            success:false,
                            error:true,
                        },
                        this.unameClass={
                            success : false,
                            error : true,
                            msg : result.data.message
                        }
                    }else{
                        this.unameIcon={
                            'el-icon-success':true,
                            'el-icon-error':false,
                            success:true,
                            error:false,
                        },
                        this.unameClass={
                            success : true,
                            error : false,
                            msg : ''
                        }
                    }
                });
            }else{
                this.unameIcon={
                    'el-icon-success':false,
                    'el-icon-error':true,
                    success:false,
                    error:true,
                },
                this.unameClass={
                    success : false,
                    error : true,
                    msg : '登录名应为4-10位汉字字母和数字组成'
                }
            }
        },
        register(){
            if(this.unameClass.success==true&this.pwdClass.success==true&this.sureClass.success==true){
                this.axios.post('/register','phone='+this.phone+'&password='+this.password+'&uname='+this.uname).then(result=>{
                    if(result.data.code==1){
                        this.active=4;
                    }
                });
            }
        },
        toLogin(){
            this.$router.push('/login').catch(e=>{});
        }
    }
}
</script>