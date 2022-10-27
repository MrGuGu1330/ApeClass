// 存放网络请求相关的代码
class Req {
    // 统一存放基础路径
    static baseURL = 'http://127.0.0.1:3000'
    // 仿造$.get()
    static get(url,callback){
        $.get(Req.baseURL + url, callback)
    }

    // POST请求的特点：路径和参数分开传递
    // $.post(地址,参数,回调函数)
    static post(url,params,cb){
        $.post(Req.baseURL + url,params,cb)
    }
}