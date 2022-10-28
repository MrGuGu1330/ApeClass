const express = require('express')
// 引入连接池模块
const pool = require('../pool')
const router = express.Router()

router.get('/courses',(req, res, next)=>{
    //查询所有大课
    pool.query('select * from course_classification',(err,r)=>{
        if(err){
            return next(err)
        }
        res.send({
            code:200,
            msg:'已有课程',
            data:r
        })
    })

})

router.get('/sub_py',(req, res,next)=>{
    pool.query('select * from course_classification' +
        'select * from py_course limit 5 ;' +
        'select * from course_module where cm_type like "py%%" limit 5 ',(err,r)=>{
        if(err){
            return next(err)
        }
        res.send({
            code:200,
            msg:'Python',
            data:r
        })


    })

})

module.exports = router