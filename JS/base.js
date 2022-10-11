// 导航下拉菜单 课程中心
$('.sub-menu').eq(0).click(function () {
    console.log($(this))
    $(this).css('display','')
})
// 导航下拉菜单 关于

// 侧边栏
$('.elevator .list .itemV.item-wx').mouseover(function () {
    console.log($(this))
    $('.elevator .list .itemV.item-wx>img').addClass('active')
})
$('.elevator .list .itemV.item-wx').mouseleave(function () {
    console.log($(this))
    $('.elevator .list .itemV.item-wx>img').removeClass('active')
})