$(function() {

	// '판매가 계산' 버튼 누르면 [원가, 과세율, 마진율, 추가금액] 계산해서 판매가 출력
	$('#btnCalTb').on('click', '#calculate', function() {
		
		var costPrice = $('#costPrice').val();
		costPrice = parseInt(costPrice);
		
		var taxPct = $('#taxPct').val();
		taxPct = parseInt(taxPct);
		
		var marginPct = $('#marginPct').val();
		marginPct = parseInt(marginPct);
		
		var marginPrice = $('#marginPrice').val();
		marginPrice = parseInt(marginPrice);
	
		var price = costPrice
					 + costPrice * (taxPct * 0.01) 
					 + costPrice * (marginPct * 0.01) 
					 + marginPrice
	
		$('#sellingPrice').val(price);
		
	});

	// 이미지 썸네일 따기
	$('#goodsImgThumb').change(function() {
		if(this.files && this.files[0]) {
			var reader = new FileReader;
			reader.onload = function(data) {
				$('img.product-img').attr('src', data.target.result).width(500);
			}
			reader.readAsDataURL(this.files[0]);
		}
	});
	
	// goodsModify 초기화 버튼 - 클릭 시 수정 입력 전 데이터가 보이도록 새로고침
	$(document).on('click', '#btnReset', function() {
		location.reload();
	});
	
	
});