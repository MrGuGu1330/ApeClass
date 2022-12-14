const express = require('express')
// 引入连接池模块
const pool = require('../pool')
const router = express.Router()

router.get('/left/:sub_id',(req, res,next)=>{
    const obj = req.params
    pool.query('select * from sub_left where sub_id=?',[obj.sub_id],(err,r)=>{
        if(err){
            return next(err)
        }
        res.send({
            code:200,
            msg:'下拉菜单左',
            data:r
        })
    })

})

router.get('/right/:sub_id',(req, res,next)=>{
    const obj = req.params
    pool.query('select * from sub_right where sub_id=?',[obj.sub_id],(err,r)=>{
        if(err){
            return next(err)
        }
        res.send({
            code:200,
            msg:'下拉菜单右',
            data:r
        })
    })

})

router.get('/course/:cc_id',(req,res,next)=>{
    const obj = req.params
    pool.query('select * from course_classification where cc_id=?',[obj.cc_id],(err,r)=>{
        if(err){
            return next(err)
        }
        res.send({
            code:200,
            msg:'下拉顶部',
            data:r
        })
    })
})

module.exports = router