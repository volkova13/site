$(function(){
	$.ajaxSetup({
		url:'pasing.php',
		type:'POST',
		beforeSend:function(){
			$("#empty").html("<img src='media/img/loader.gif'/>");
		},
		success:function(m){
			$('#empty').html(m);
		},
		eror:function(m){
			$('#empty').html(m);
		}
	});
	$('#google_search').click(function(){
		$.ajax();
	});
});