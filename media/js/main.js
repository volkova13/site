$(function(){
	$('.topmenu a').bind({
		'mouseover':function(){
			//text=$(this).text(); //cсылка на текущий текст
			//console.log(text);
			color=$(this).attr('data-color');
			body=$(this).attr('data-body');
			$('.empty').text(body);
			$('.shapka').css({
				'background': color
			})
			
		},
		'mouseout': function()
		{
			$('.shapka').css(
			{
				'background': 'url(media/img/sm.png)'
			})
		}
	})
var fx=
{
	'initModal':function()
	{
		if($('.modal-window').length==0)
		{
			$('<div>').attr('id','jqvery-overlay')
			.fadeIn(2000)
			.appendTo('body');
			
			
			
			
			return $('<div>')
			.addClass('modal-window')
			.appendTo('body');
		}else
			{ 
			return $('.modal-window');
		}
	}
}	
$('.link').bind('click',function(e)
{
	e.preventDefault();
	var data=$(this).attr('data-id');
	//console.log(data);
	modal=fx.initModal();
	//подключаем ajax
	$('<a>').attr('href','#') //создаем ссылку
	.addClass('modal-close-btn')
	.html('&times')
	.click(function(e){
		e.preventDefault();
		$('#jqvery-overlay').fadeOut(1000,function() //медленно пропадает затемнение
		{
			$(this).remove();
		})
		modal.remove(); //закрывается окно
	}).appendTo(modal);
	
	$.ajax({
		type:'Post',
		url:'ajax.php',
		data:'id='+data,
		success:function(data){
			modal.append(data);
		},
		error:function(msg){
			modal.append(msg);
		}
	})
	
});

//конец jqvery
	});