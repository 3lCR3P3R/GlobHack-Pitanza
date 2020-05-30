$(document).ready(function(){

	var flag = false;
	var scroll;
    $("#logo").css({"margin-top": "150px", " width": "200px", "height": "200"})
	$(window).scroll(function(){
		scroll = $(window).scrollTop();
    
		if (scroll > 50) {
			if (!flag) {
				$("#logo").css({"margin-top": "-2px", " width": "150px", "height": "70px", "margin-left":"20px", "margin-right":"25px"})
				flag = true;

				$("header").css({"background-color": "rgb(255,255,255)",})
			}
		}else{
			if (flag) {
				$("#logo").css({"margin-top": "150px", " width": "200px", "height": "200"})
				flag = false;

			}
		}
	})
});