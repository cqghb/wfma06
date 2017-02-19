/**
 * main页面的脚本
 */
$('#nav').click(function(){
	var NavUrl = $(this).attr("action");
	console.log("url"+NavUrl);
	$.ajax({
		url:NavUrl,
		type:"post"
	});
});
