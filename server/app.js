const express=require('express');
const mysql=require('mysql');
const cors=require('cors');
const bodyParser=require('body-parser');
const server=express();
const pool=mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'myshop',
    connectionLimit:10
});
server.listen(3000);
server.use(express.static('public'));
server.use(cors({
    origin:['http://127.0.0.1:8080','http://localhost:8080']
}));
server.use(bodyParser.urlencoded({
    extended:false
}));
server.get('/phoneCheck',(req,res)=>{
    let phone=req.query.phone;
    let sql='select uid from user where phone=?';
    pool.query(sql,[phone],(err,result)=>{
        if (err) throw err;
        if(result.length>0){
            res.send({message:'该号码已被注册',code:0});
        }else{
            res.send({message:'可以注册',code:1});
        }
    });
});
server.get('/unameCheck',(req,res)=>{
    let uname=req.query.uname;
    let sql='select uid from user where uname=?';
    pool.query(sql,[uname],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({message:'该登录名已存在',code:0});
        }else{
            res.send({message:'可以使用',code:1});
        }
    });
});
server.post('/register',(req,res)=>{
    let phone=req.body.phone;
    let password=req.body.password;
    let uname=req.body.uname;
    let sql='insert into user set phone=?,upwd=?,uname=?';
    pool.query(sql,[phone,password,uname],(err,result)=>{
        if (err) throw err;
        if(result.affectedRows>0){
            res.send({message:'注册成功',code:1});
        }
    });
});
server.get('/unameLogin',(req,res)=>{
    let uname=req.query.uname;
    let password=req.query.password;
    let sql='select uid,uname from user where uname=? and upwd=?';
    pool.query(sql,[uname,password],(err,result)=>{
        if (err) throw err;
        if(result.length>0){
            res.send({message:'登录成功',code:1,result:result});
        }else{
            res.send({message:'用户名或密码错误',code:0});
        }
    });
});
server.get('/phoneLogin',(req,res)=>{
    let phone=req.query.phone;
    let password=req.query.password;
    let sql='select uid,uname from user where phone=? and upwd=?';
    pool.query(sql,[phone,password],(err,result)=>{
        if (err) throw err;
        if(result.length>0){
            res.send({message:'登录成功',code:1,result:result});
        }else{
            res.send({message:'手机号或密码错误',code:0});
        }
    });
});
server.get('/hotProduct',(req,res)=>{
    let sql='select pid,title,image,price,hot from product order by hot desc limit 0,10';
    pool.query(sql,(err,results)=>{
        if (err) throw err;
        res.send({message:'传送成功',code:1,results:results});
    });
});
server.get('/listAll',(req,res)=>{
    let page=req.query.page;
    let pagesize=15;
    let offset=(page-1)*pagesize;
    let rowcount;
    let pagecount;
    let sql='select pid,title,image,price,hot from product limit '+offset+','+pagesize;
    pool.query(sql,(err,results)=>{
        if (err) throw err;
        sql='select COUNT(pid) as count from product';
        pool.query(sql,(err,result)=>{
            if (err) throw err;
            rowcount=result[0].count;
            pagecount=Math.ceil(rowcount/pagesize);
            res.send({message:'传送成功',code:1,results:results,pagecount:pagecount});
        });
    });
});
server.get('/list',(req,res)=>{
    let cid=req.query.cid;
    let page=req.query.page;
    let pagesize=15;
    let offset=(page-1)*pagesize;
    let sql='select pid,title,image,price,hot from product where cid=? limit '+offset+','+pagesize;
    pool.query(sql,[cid],(err,results)=>{
        if (err) throw err;
        sql='select COUNT(pid) as count from product where cid=?';
        pool.query(sql,[cid],(err,result)=>{
            if (err) throw err;
            rowcount=result[0].count;
            pagecount=Math.ceil(rowcount/pagesize);
            res.send({message:'传送成功',code:1,results:results,pagecount:pagecount});
        });
    });
});
server.get('/details',(req,res)=>{
    let pid=req.query.pid;
    let sql='select title,price,stock,hot from product where pid=?';
    pool.query(sql,[pid],(err,results)=>{
        if (err) throw err;
        res.send({message:'发送成功',code:1,results:results[0]});
    });
});
server.get('/proPic',(req,res)=>{
    let pid=req.query.pid;
    let sql='select sm,md,lg from pro_pic where pid=?'
    pool.query(sql,[pid],(err,results)=>{
        if (err) throw err;
        res.send({message:'发送成功',code:1,results:results});
    });
});
server.post('/putCar',(req,res)=>{
    let pid=req.body.pid;
    let number=req.body.number;
    let uid=req.body.uid;
    let sql='select sid from shopcar where pid=? and uid=?';
    pool.query(sql,[pid,uid],(err,result)=>{
        if (err) throw err;
        if(result.length==0){
            sql='insert into shopcar set pid=?,number=?,uid=?';
            pool.query(sql,[pid,number,uid],(err,results)=>{
                if (err) throw err;
                res.send({message:'成功加入购物车',code:1});
            });
        }else{
            let sid=result[0].sid;
            sql='select number from shopcar where sid=?';
            pool.query(sql,[sid],(err,result1)=>{
                if (err) throw err;
                let number1=result1[0].number;
                number1+=Number(number);
                sql='select stock from product where pid=?';
                pool.query(sql,[pid],(err,result2)=>{
                    let stock=result2[0].stock;
                    if (err) throw err;
                    if(Number(number1)<Number(stock)){
                        sql='update shopcar set number=? where sid=?';
                        pool.query(sql,[number1,sid],(err,results)=>{
                            if (err) throw err;
                            res.send({message:'成功加入购物车',code:1});
                        });
                    }else{
                        sql='update shopcar set number=? where sid=?';
                        pool.query(sql,[stock,sid],(err,results)=>{
                            if (err) throw err;
                            res.send({message:'成功加入购物车',code:1});
                        });
                    }
                });
            });
        }
    });
});
server.get('/shopcar',(req,res)=>{
    let uid=req.query.uid;
    let sql='select a.pid,title,price,number,image,stock from shopcar as a inner join product as b on a.pid=b.pid where uid=?';
    pool.query(sql,[uid],(err,results)=>{
        if(err) throw err;
        if(results.length>0){
            res.send({message:'获取成功',code:1,results:results});
        }else{
            res.send({message:'购物车为空',code:0});
        }
    });
});
server.delete('/deletePro',(req,res)=>{
    let pid=req.query.pid;
    let sql='delete from shopcar where pid=?';
    pool.query(sql,[pid],(err,results)=>{
        if (err) throw err;
        if(results.affectedRows>0){
            res.send({message:'删除成功',code:1});
        }
    })
});
server.delete('/deleteAll',(req,res)=>{
    let sql='delete from shopcar';
    pool.query(sql,(err,result)=>{
        if (err) throw err;
        if(result.affectedRows>0){
            res.send({message:'删除成功',code:1});
        }
    })
});
server.get('/search',(req,res)=>{
    let sql='select pid,cid,title from product';
    pool.query(sql,(err,results)=>{
        if (err) throw err;
        res.send({message:'发送成功',code:1,results:results});
    });
});
server.put('/updateNum',(req,res)=>{
    let uid=req.query.uid
    let pid=req.query.pid;
    let number=req.query.number;
    let sql='update shopcar set number=? where pid=? and uid=?';
    pool.query(sql,[number,pid,uid],(err,results)=>{
        if(err) throw err;
        if(results.affectedRows>0){
            res.send({message:'修改成功',code:1});
        }
    });
});
server.get('/me',(req,res)=>{
    let uid=req.query.uid;
    let sql='select * from user where uid=?';
    pool.query(sql,[uid],(err,results)=>{
        if (err) throw err;
        res.send({message:'发送成功',code:1,results:results});
    });
});