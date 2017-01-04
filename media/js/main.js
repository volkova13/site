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
		'mouseout': function(){
			$('.shapka').css({
				'background': 'url(media/img/sm.png)'
			})
		}
	})
//конец jqvery
	});