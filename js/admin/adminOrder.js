$(function() {

	// 검색 필터
	// '구분' 버튼 그룹 하나만 눌리게
	$('div#state-btn').on('click', 'button', function() {
		$('div#state-btn button').removeClass('active');
		$(this).addClass('active');
	});

	// '기간' 버튼 그룹 하나만 눌리게
	$('div#period-btn').on('click', 'button', function() {
		$('div#period-btn button').removeClass('active');
		$(this).addClass('active');
	});
	
	
	// '송장번호' or '공급사' 입력 시 해당 번호 체크박스 체크되게
	$('#trackingNum').on('change', function() {
		$('#checkedOno').attr('checked', true);
	});
	$('#supplier').on('change', function() {
		$('#checkedOno').attr('checked', true);
	});
	
});