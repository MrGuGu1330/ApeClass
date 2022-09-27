var span = document.getElementById('fade-span');
var flag = 0;
var arr = $(".yc");
var icon = $("#jt");
var ang = 180;
var timer;


function show(){
	for(i=0;i<arr.length;i++){
		arr[i].style.display='block'
	};
	arr.animate({top:'+=170px',opacity:'1'},800);
	span.innerHTML='关闭更多';
	icon.removeClass('bi-chevron-double-down');
	icon.addClass('bi-chevron-double-up');
};

function hide(){
	arr.animate({top:'-=170px',opacity:'0'},500).fadeOut(500);
	span.innerHTML='更多课程';
	icon.removeClass('bi-chevron-double-up');
	icon.addClass('bi-chevron-double-down');
};


function more(){
	if(flag){
		hide();
		flag = (!flag);
	}else{
		show();
		flag = (!flag);
	}
}
