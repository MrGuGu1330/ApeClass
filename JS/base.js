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
                                    <div id="courseTitle">
                                    </div>
                                    <div class="text-jump common-pointer-only">
                                        <a href="">所有${title}课程</a>
                                    </div>
                                </div>
                                <div class="box-module">
                                    <div class="text-title">
                                        <div></div>
                                        <span>课程模块</span>
                                    </div>
                                    <div id="moduleTitle">
                                    
                                    </div>    
                                    <div class="text-jump common-pointer-only">
                                        <a href="">所有课程模块</a>
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
    // console.log(data)
    $('#courseTitle').html(
        data.data.map(item => {
            const {title} = item
            return `
                <div class="text-course-title text-not-wrap">${title}</div>
            `
        })
    )
})
Req.get(`/v1/base/right/${i}`,data=>{
    // console.log(data)
    $('#moduleTitle').html(
        data.data.map(item => {
            const {title} = item
            return `
                <div class="course-model-item text-not-wrap">
                    ${title} &nbsp;
                    <svg width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                    </svg>
                </div>
            `
        })
    )
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
// .mouseleave(function () {
//     $('.box-course').stop().animate({top:'-440px',opacity:'0'},500)
// })
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
                                    <div id="courseTitle"></div>
                                    <div class="text-jump common-pointer-only">
                                        <a href="">所有${title}课程</a>
                                    </div>
                                </div>
                                <div class="box-module">
                                    <div class="text-title">
                                        <div></div>
                                        <span>课程模块</span>
                                    </div>
                                    <div id="moduleTitle">
                                    
                                    </div> 
                                    <div class="text-jump common-pointer-only">
                                        <a href="">所有课程模块</a>
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
        // console.log(data)
        $('#courseTitle').html(
            data.data.map(item => {
                const {title} = item
                return `
                <div class="text-course-title text-not-wrap">${title}</div>
            `
            })
        )
    })
    Req.get(`/v1/base/right/${i}`,data=>{
        // console.log(data)
        $('#moduleTitle').html(
            data.data.map(item => {
                const {title} = item
                return `
                <div class="course-model-item text-not-wrap">
                    ${title} &nbsp;
                    <svg width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                    </svg>
                </div>
            `
            })
        )
    })
})

