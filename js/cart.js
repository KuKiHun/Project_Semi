// 장바구니 버튼 클릭 이벤트 핸들러
		$('.js-addcart-detail').click(function() {
			var button = $(this);
			var gno = button.data('gno');
			var cartAmount = $('#quantity-input').val();
			//alert(cartAmount);

			// 제품 정보 JSON 객체로 묶기
			var productInfo = {
				gno : gno,
				cartAmount : cartAmount
			};

			// 서버로 선택한 제품 정보 전송
			$.ajax({
				url: "http://localhost:8080/add-to-cart",
    			type: "POST",
    			data: productInfo,
				success : function(data) {
					// 장바구니에 제품을 추가한 후 처리
					if (data.success) {
						// 성공적으로 추가되면 장바구니 페이지 이동
						window.location.href = "/shopping-cart";
					} else {
						//오류 처리
						alert("제품을 장바구니에 추가할 수 없습니다.");
					}
				},
				error : function(err){
					console.log(err);
				}
			});
		});
		
		
		// 장바구니 수량 증가
$('.increase-quantity').click(function() {
    var quantityInput = $('#quantity-input');
    var currentQuantity = parseInt(quantityInput.val());

});

// 장바구니 수량 감소
$('.decrease-quantity').click(function() {
    var quantityInput = $('#quantity-input');
    var currentQuantity = parseInt(quantityInput.val());

    
});


	

		
		
