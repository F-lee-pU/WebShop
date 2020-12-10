<template>
  <div id="app">
    <router-view/>
    <my-footer></my-footer>
  </div>
</template>

<style>
.hide{display: none;}
[v-cloak]{display: none;}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #000;
}
</style>
<script>
import './assets/css/reset.css'
export default {
  created(){
    if(sessionStorage.getItem('isLogin')){
      let userInfo=JSON.parse(sessionStorage.getItem('userInfo'));
      this.$store.state.userId=userInfo.uid;
      this.$store.state.userName=userInfo.uname;
      this.$store.state.isLogin=true;
    }
  }
}
</script>