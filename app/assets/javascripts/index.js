$(document).ready(function(){
	$("#click_here_sub").click(function () {
	$("#drop_menu_sub").fadeIn(1000);
	$("#drop_menu").slideUp("slow");
		$("#click_here_back").fadeIn(10);
		$("#click_here").fadeOut(10);
	});
	$("#click_here_back").click(function () {
		$("#drop_menu_sub").slideUp(100);
		$("#drop_menu").slideDown("slow");
		$("#click_here_back").fadeOut(100);
		$("#click_here").fadeIn(100);
	});
	$("#click_here").click(function () {
		$(".left_menu_main").removeClass("active");
			return false;
	});
	
	$(".click_here").click(function () {
		$(".left_menu_main").removeClass("active");
			return false;
	});

	$("#menu-toggle").click(function () {
		$(".left_menu_main").addClass("active");
			return false;
	});
  
  
	$(".close").click(function () {
		$(".overlay").removeClass("active");
     $('.overlay').find("*").removeClass("active");
			return false;
	});

	$(".button").click(function () {
    var status_id = $(this).attr('href').split('#');
     
		$(".overlay").addClass("active");
    $("#"+status_id[1]).addClass("active");
    
			return false;
	});
});

