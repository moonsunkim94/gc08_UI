$(function(){
// 3. axMemberList
	$('#amlist').click(function(){
		$.ajax({
			type:'Get',
			url:'amlist',
			success:function(result){
				$('#resultArea').html(result);
			} // success
		}); // ajax
	}); // click
// 3.2 id 가 쓴 글목록 출력하기 -> <span> Tag class 이용 , JQuery 이벤트	
	$('.cc').click(function(){
		var id=$(this).html();
		console.log('cc_class id => '+id) ;
		$.ajax({
			type:'Get',
			data: {
				id:id },
			url:'idblist',
			success:function(result){
				$('#resultArea2').html(result);
			} // success
		}); // ajax	
	}); // class click
	
// 4. boardList
	$('#ablist').click(function(){
		$.ajax({
			type:'Get',
			url:'idblist',
			success:function(result){
				$('#resultArea').html(result);
			} // success
		}); // ajax
	}); // click		
	
}) // ready	
// 3.1 id 가 쓴 글목록 출력하기 -> aTag , JS onclick 이벤트
function axBoard(id) {
	console.log('axBoard id => '+id) ;
	// 실행시 크롬의 console 창에서 값 확인 가능
	$.ajax({
		type:'Get',
		data: {
			id:id },
		url:'idblist',
		success:function(result){
			$('#resultArea2').html(result);
		} // success
	}); // ajax	
} // axBoard 

function axBDetail(seq,index) {
	console.log('axBDetail seq ='+seq+' , index='+index) ;
	// 실행시 크롬의 console 창에서 값 확인 가능
	$.ajax({
		type:'Get',
		data: {
			seq:seq },
		url:'axbdetail',
		success:function(result){
			$('.result').html('');
			$('#result'+index).html(result);
		} // success
	}); // ajax	
} // axBoard 