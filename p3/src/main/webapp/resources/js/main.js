$(function() {
	//상품 수량 가격 변경 하기
	var $quantity = $('.quantity'),
		$unitprice = $quantity.attr('data-unitprice'),
		$qtyBtn = $quantity.find('span'),
		$qtyInput = $quantity.find('input'),
		$tagetTotal = $('.total_price .price');

	$qtyBtn.click(function() {
		var currentCount = $qtyInput.val();

		if ($(this).hasClass('plus')) {
			currentCount++;
			$qtyInput.val(currentCount);
		} else {
			if (currentCount > 1) {
				currentCount--;
				$qtyInput.val(currentCount);
			}
		}

		// 수량 * 단가 변수 total에 저장하고 그걸 .price 값으로 변경되도록 한다.
		var total = (currentCount * $unitprice).toLocaleString('en');
		$tagetTotal.text(total + " won");
	});
});//document ready function