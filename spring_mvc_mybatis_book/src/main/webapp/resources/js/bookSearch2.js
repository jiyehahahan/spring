/**
 * bookSearch2.js
 */
 
 $(document).ready(function(){
 	$('#bookSearchFrm').on('submit', function(){ 	
 		event.preventDefault(); 		
 		
 		var formData = $(this).serialize();
 		
 		$.ajax({
 			type:"post",
 			url:"bookSearch2",
 			data: formData,
 			success:function(result){
 				$('#searchResultBox').html(result);
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});
 
