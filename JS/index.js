const span = document.getElementById('fade-span');
var flag = 0;
const icon = $(".bi-chevron-double-down");

Req.get('/v1/index/courses',data=>{
	console.log(data)
	$('.course-list').html(
		data.data.map(item => {
			const {title,bgc,pic,bg_pic,info,quantity,bg_bottom} = item
			return `
				<div class="course-item box-shadows-common drop-down-item" style="background: linear-gradient(${bgc});">
					<div class="course-title text-row-2">
						<span>${title}</span>
					</div>
					<div class="course-tips text-row-2">
						<span>${info}</span>
					</div>
					<div class="course-icon" style="background: url('/img/bg/${bg_pic}') 0 0/ 100% 100% no-repeat;">
						<img src="img/covers/${pic}.png" alt="">
					</div>
					<div class="course-count">
						<span>
							<i class="bi bi-book-half"></i>
							${quantity}人正在学习
						</span>
					</div>
					<img src="img/bg/${bg_bottom}.png" alt="" class="bg-bottom">
				</div>
			`
		})
	)
	for (i=5;i<10;i++){
		$('.course-item').eq(i).addClass('yc').css('display','none')
	}
	for(i=0;i<5;i++){
		$('.course-item').eq(i).animate({top:'0',opacity:'1'},800)
	}
})


function show(){
	$('.yc').addClass('xs').removeClass('yc').stop().animate({top:'0',opacity:'1'},800).show()
	span.innerHTML='关闭更多';
	icon.css("transform","rotate(180deg)")
}

function hide(){
	$('.xs').addClass('yc').removeClass('xs').stop().animate({top:'-200px',opacity:'0'},500).hide(500)
	span.innerHTML='更多课程';
	icon.css("transform","rotate(0deg)")
}

function more(){
	if(flag){
		hide();
		flag = (!flag);
	}else{
		show();
		flag = (!flag);
	}
}

