

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
