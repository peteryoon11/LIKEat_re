$(document).ready(function() {
	/* $("p").click(function(){
	    $(this).hide();
	}); */
	var count=0;
	$(".star_rating a").click(function() {
		//	console.log("dddd");
		/*$(this).parent().children("a").removeClass("on");
		$(this).addClass("on").prevAll("a").addClass("on");
		*/
		console.log("ddd");
		console.log($(this));
		console.log($(this).parent());
		console.log($(this).parent().children("a"));
		console.log($(this).parent().children("a").removeClass("on"));
		console.log("parent--------------addclass");
		
		console.log($(this).addClass("on"));
		console.log($(this).addClass("on").prevAll("a"));
		
		return false;
	});
	//$(".star_rating a")

});