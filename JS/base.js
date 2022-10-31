let i = 0

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
// 下拉菜单1
$('.list-left>div:first-child').mouseover(function () {
    $('.box-course').stop().animate({top:'60px',opacity:'1'},500)
})
.mouseleave(function () {
    $('.box-course').stop().animate({top:'-440px',opacity:'0'},500)
})
$('.box-course').mouseover(function () {
    $('.box-course').stop().animate({top:'60px',opacity:'1'},500)
})
.mouseleave(function () {
    $('.box-course').stop().animate({top:'-440px',opacity:'0'},500)
})

//下拉菜单2
$('.list-left>div:last-child').mouseover(function () {
    $('.box-course1').stop().animate({top:'60px',opacity:'1'},500)
})
.mouseleave(function () {
    $('.box-course1').stop().animate({top:'-350px',opacity:'0'},500)
})
$('.box-course1').mouseover(function () {
    $('.box-course1').stop().animate({top:'60px',opacity:'1'},500)
})
.mouseleave(function () {
    $('.box-course1').stop().animate({top:'-350px',opacity:'0'},500)
})

// course-list激活
$('.box-course-list').on('click','.box-course-item',function () {
    $(this).addClass('active').siblings().removeClass('active')
    i = ($(this).index()+1)
})

