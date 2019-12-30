$(function(){
	$('#aloginf').click(function(){
		$.ajax({
			type:'Post',
			url:'loginf',
			success:function(result){
				$('#resultArea').html(result);
			} 
		});
	}); 

	
	$('.textLink').hover(function(){
		$(this).css({
				color: "gray",
				cursor: "pointer"}); 
	},function(){
		$(this).css({
				color: "black",
				cursor: "default"}); 
	}); //hover  	
	
	
// 계산기
	$('#calcf').click(function(){
		open('calcf','_blank',
		'toolbar=no,menubar=yes,scrollbars=yes,resizable=yes,width=400,height=350');
	}); // 계산기끝	
	
}) // ready