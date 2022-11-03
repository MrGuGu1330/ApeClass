let i = 1

//预加载下拉菜单
Req.get(`/v1/base/course/${i}`,data=>{
    $('.box-course').append(
        data.data.map(item => {
            const {bgc,title,pic} = item
            return`
                <div id="subTitle">
                    <div>
                        <div style="height: 100%;">
                            <a href="" class="text-to-study common-pointer-only" style="background: linear-gradient(180deg,${bgc});">
                                <span>
                                    <img src="/img/covers/${pic}.png" alt="">
                                    开始学习 ${title}
                                </span>
                            </a>
                            <div class="box-content">
                                <div class="box-hot-course">
                                    <div class="text-title">
                                        <div></div>
                                        <span>热门课程</span>
                                    </div>
                                        
                                    <div class="text-jump common-pointer-only">
                                        <a href="">所有${title}课程</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    
            `
        })
    )
})
Req.get(`/v1/base/left/${i}`,data=>{
    console.log(data)

})
Req.get(`/v1/base/left/${i}`,data=>{
    console.log(data)
})

// 侧边栏
$('.elevator .list .itemV.item-wx').mouseover(function () {
    $('.elevator .list .itemV.item-wx>img').addClass('active')
    $('.elevator .list .itemV.item-wx').addClass('active')
}).mouseleave(function () {
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
    // console.log(i)

    Req.get(`/v1/base/course/${i}`,data=>{
        $('#subTitle').html(
            data.data.map(item => {
                const {bgc,title,pic} = item
                return`
                    <div style="height: 100%;">
                        <a href="" class="text-to-study common-pointer-only" style="background: linear-gradient(180deg,${bgc});">
                            <span>
                                <img src="/img/covers/${pic}.png" alt="">
                                开始学习 ${title}
                            </span>
                        </a>
                        <div class="box-content">
                            <div class="box-hot-course">
                                <div class="text-title">
                                    <div></div>
                                    <span>热门课程</span>
                                </div>
                                <div class="text-jump common-pointer-only">
                                    <a href="">所有${title}课程</a>
                                </div>
                            </div>
                        </div>
                    </div>
                `
            })
        )
    })


    Req.get(`/v1/base/left/${i}`,data=>{
        console.log(data)
    })
    Req.get(`/v1/base/right/${i}`,data=>{
        console.log(data)
    })
})

// console.log($('#subTitle'))