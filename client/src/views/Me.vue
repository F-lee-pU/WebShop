<template>
    <div>
        <nav-menu></nav-menu>
        <div id="me">
            <div>
                
            </div>
        </div>
        <promise></promise>
    </div>
</template>
<script>
import '../assets/css/view/me.css'
import NavMenu from '../components/NavMenu'
import Promise from '../components/Promise'
export default {
    components:{
        NavMenu,Promise
    },
    data(){
        return{
            myInfo:{}
        }
    },
    mounted(){
        let uid=this.$store.state.userId;
        this.axios.get('/me?uid='+uid).then(result=>{

        });
    }
}
</script>