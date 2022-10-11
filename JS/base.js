$('.elevator .list .itemV.item-wx').mouseover(function () {
    console.log($(this))
    $('.elevator .list .itemV.item-wx>img').addClass('active')
})
$('.elevator .list .itemV.item-wx').mouseleave(function () {
    console.log($(this))
    $('.elevator .list .itemV.item-wx>img').removeClass('active')
})