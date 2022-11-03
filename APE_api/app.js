const express = require('express')
const cors = require('cors')
const indexRouter = require('./routers/indexR')
const baseRouter = require('./routers/baseR')


const app = express()
app.listen(3000,()=>{
    console.log('服务器启动成功')
})

// 将post传参转为对象
app.use(express.urlencoded({
    extended: true
}))
app.use(cors())

app.use('/v1/index',indexRouter)
app.use('/v1/base',baseRouter)

// 错误处理中间件
app.use( (err,req,res)=>{
    console.log(err)
    res.send({code:500,msg:'服务器端错误'})
} )