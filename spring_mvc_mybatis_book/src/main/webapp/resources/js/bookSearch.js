/**
 * bookSearch.js
 */
 
  $(document).ready(function(){
 	$('#bookSearchFrm').on('submit', function(){ 	
 		event.preventDefault(); 	
 			
 		var formData = $(this).serialize();
 		
 		$.ajax({
 			type:"post",
 			url:"bookSearch",
 			data: formData,
 			success:function(result){
 				$('#searchResultBox').empty();
 				$('#searchResultBox').append('<table id="resultTable" border="1" width="600">' + 
						'<tr><th>도서번호</th><th>도서명</th><th>저자명</th><th>도서가격</th>' + 
						'<th>제조일</th><th>재고</th></tr>');
						
				// 검색 결과 없는 경우
				if(result == ""){
					$('#resultTable').append('<tr align="center"><td colspan="6">찾는 상품이 없습니다</td></tr>');
				} else {
					for(var i=0; i < result.length; i++) {
						$('#resultTable').append('<tr><td>' + result[i].bookNo + '</td><td>' +
																							result[i].bookName + '</td><td>' +
																							result[i].bookAuthor + '</td><td>' +
																							result[i].bookPrice + '</td><td>' +
																							result[i].bookDate + '</td><td>' +
																							result[i].bookStock + '</td></tr>');
					}
				}
				$('#searchResultBox').append('</table>');
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});