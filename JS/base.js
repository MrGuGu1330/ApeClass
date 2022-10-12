// 导航下拉菜单 课程中心
$('.list-item').eq(0).click(function () {
    $('.sub-menu').eq(0).css('display','')
})
$('.mask').click(function (){
    $('.sub-menu').eq(0).css('display','none')
})
$('')

// 导航下拉菜单 关于
$('.list-item').eq(4).click(function () {
    $('.sub-menu').eq(1).css('display','')
})
$('.mask').click(function (){
    $('.sub-menu').eq(1).css('display','none')
})


// 侧边栏
$('.elevator .list .itemV.item-wx').mouseover(function () {
    $('.elevator .list .itemV.item-wx>img').addClass('active')
    $('.elevator .list .itemV.item-wx').addClass('active')
})
$('.elevator .list .itemV.item-wx').mouseleave(function () {
    $('.elevator .list .itemV.item-wx>img').removeClass('active')
    $('.elevator .list .itemV.item-wx').removeClass('active')
})

$('.elevator .list .itemV.item-wx').next().mouseover(function () {
    $('.elevator .list .itemV').next().addClass('active')
})
$('.elevator .list .itemV.item-wx').next().mouseleave(function () {
    $('.elevator .list .itemV').next().removeClass('active')
})
// 返回顶部
$('.elevator .list .itemV.item-wx').next().click(function () {
    $('body').animate({scrollTop:'0'},500)
})
