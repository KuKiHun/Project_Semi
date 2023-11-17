<%@ page contentType = "text/html;charset=utf-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Product Detail</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
<!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="resources/images/wearitLogo_crop_small.png">

</head>

<body class="animsition">
	
	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						Rent it, Wear it 
					</div>

					<div class="right-top-bar flex-w h-full">

						<c:set var="mno" value="${sessionScope.mno }" />
					<c:if test="${mno == null}">
						<a href="login.do" class="flex-c-m trans-04 p-lr-25">
							로그인
						</a>
					</c:if>
					<c:if test="${mno != null}">
						<a href="logout.do" class="flex-c-m trans-04 p-lr-25">
							로그아웃
						</a>
						<a href="mypage.do" class="flex-c-m trans-04 p-lr-25">
							마이페이지
						</a>
					</c:if>

						<a href="#" class="flex-c-m trans-04 p-lr-25">
							고객센터
						</a>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="index.do" class="logo">
						<img src="resources/images/icons/wearitLogo.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="index.do">홈</a>
							</li>

							<li>
								<a href="product.do">구매</a>
							</li>

							<li>
								<a href="retal.do">렌탈</a>
							</li>

							<li>
								<a href="lookbook.do">룩북</a>
							</li>

							<li>
								<a href="about.do">이용방법안내</a>
							</li>

							<li>
								<a href="community.do">커뮤니티</a>
								<ul class="sub-menu">
									<li><a href="community.do">전체 글 보기</a></li>
									<li><a href="#">내가 작성한 글 보기</a></li>
								</ul>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<a href="shopping-cart.do" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
							<i class="zmdi zmdi-shopping-cart"></i>
						</a>

						<a href="wish-list.do" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
							<i class="zmdi zmdi-favorite-outline"></i>
						</a>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="resources/images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>

	

	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.do" class="stext-109 cl8 hov-cl1 trans-04">
				홈
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<a href="product.do" class="stext-109 cl8 hov-cl1 trans-04">
				구매
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
			${GoodsVO.goodsName}
			</span>
		</div>
	</div>
		

	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
								<div class="item-slick3"
									data-thumb="resources/images/uploads/${GoodsVO.goodsImgAddr}">
									<div class="wrap-pic-w pos-relative">
										<img src="resources/images/uploads/${GoodsVO.goodsImgAddr}"
											alt="${GoodsVO.goodsImgName} 이미지" class="product-image">
										<a href="resources/images/uploads/${GoodsVO.goodsImgAddr}"></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<h4 class="mtext-105 cl2 js-name-detail p-b-14">
						
						${GoodsVO.goodsName}
						</h4>

						<span class="mtext-106 cl2">
						 <fmt:formatNumber value="${GoodsVO.sellingPrice}" pattern="###,###" type="number" var="formattedPrice" />
						 ${formattedPrice} 원

						
						</span>

						<p class="stext-102 cl3 p-t-23">
						${GoodsVO.goodsDescription}
						</p>
						
						<!--  -->
						<div class="p-t-33">
							<div class="flex-w flex-r-m p-b-10">

							</div>

							<div class="flex-w flex-r-m p-b-20">
								<div class="size-204 flex-w flex-m respon6-next">
									<div class="wrap-num-product flex-w m-r-20 m-tb-10">
										<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m decrease-quantity">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>

										<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1" id="quantity-input">
										
										<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m increase-quantity">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>
								</div>
							</div>	
						</div>

						<!-- 장바구니 -->
						<div class="flex-w flex-m p-l-10 p-t-40 respon7"
							style="text-align: center;">
							<button
								class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-wish-detail">
								위시리스트에 담기</button>
							<button
								class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"
								data-gno="${GoodsVO.gno}">장바구니에 담기</button>
							<br>
							<button
								class="flex-c-m stext-101 cl0 size-90 bg2 bor1 hov-btn1 p-lr-15 trans-04"
								id="go-to-cart-button" onclick="location.href='shopping-cart'">
								장바구니 이동</button>
						</div>
						</div>
					</div>
			</div>

			<div class="bor10 m-t-50 p-t-43 p-b-40">
				<!-- Tab01 -->
				<div class="tab01">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item p-b-10">
							<a class="nav-link active" data-toggle="tab" href="#description" role="tab">제품설명</a>
						</li>

						<li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#reviews" role="tab">리뷰</a>
						</li>
						
						<li class="nav-item p-b-10">
							<a class="nav-link" data-toggle="tab" href="#ask" role="tab">문의사항</a>
						</li>
					</ul>

					<!-- 제품설명 -->
					<div class="tab-content p-t-43">
						<div class="tab-pane fade show active" id="description" role="tabpanel">
							<div class="how-pos2 p-lr-15-md">
								<p class="stext-102 cl6">
									${GoodsVO.goodsDescription}
								</p>
							</div>
						</div>

						<!-- 리뷰 -->
						<div class="tab-pane fade" id="reviews" role="tabpanel">
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
									<div class="p-b-30 m-lr-15-sm">
										<!-- Review -->
										<div class="flex-w flex-t p-b-68">
											<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
												<img src="resources/images/avatar-01.jpg" alt="AVATAR">
											</div>

											<div class="size-207">
												<div class="flex-w flex-sb-m p-b-17">
													<span class="mtext-107 cl2 p-r-20">
														홍길동
													</span>

													<span class="fs-18 cl11">
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star-half"></i>
													</span>
												</div>

												<p class="stext-102 cl6">
													이 데님 자켓을 구매한지 얼마 안 돼서 리뷰를 남겨봅니다. 처음으로 샀는데 정말 만족스럽습니다!
디자인이 너무 멋지고, 핏이 정말 이뻐서 입었을 때 정말 자신감이 생겼어요. 소재도 퀄리티 있고, 가격 대비 정말 만족스럽습니다. 따뜻한 날씨에는 단독으로 입어도 좋고, 겨울에는 이너로 입기도 좋을 것 같아요.
배송도 빠르게 왔고, 포장도 깔끔하게 되어 있어서 좋았습니다. 앞으로도 이 쇼핑몰에서 더 많은 제품을 구매하고 싶어졌어요. 다른 제품들도 이렇게 좋다면 정말 기대가 큽니다!
추천합니다. 👍
												</p>
											</div>
										</div>
										
										<!-- Add review -->
										<form class="w-full">
											<h5 class="mtext-108 cl2 p-b-7">
												리뷰 작성하기
											</h5>

											<p class="stext-102 cl6">
												이메일 주소는 공개되지 않습니다. 필수 입력 사항은 표시되어 있습니다.
											</p>

											<div class="flex-w flex-m p-t-50 p-b-23">
												<span class="stext-102 cl3 m-r-16">
													평점
												</span>

												<span class="wrap-rating fs-18 cl11 pointer">
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<i class="item-rating pointer zmdi zmdi-star-outline"></i>
													<input class="dis-none" type="number" name="rating">
												</span>
											</div>

											<div class="row p-b-25">
												<div class="col-12 p-b-5">
													<label class="stext-102 cl3" for="review">review</label>
													<textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="review" name="review"></textarea>
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="name">이름</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name" type="text" name="name">
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="email">이메일</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email" type="text" name="email">
												</div>
											</div>

											<button class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
												제출
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 문의사항 -->
						<div class="tab-pane fade" id="ask" role="tabpanel">
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
										<!-- Add review -->
										<form class="w-full">
											<h5 class="mtext-108 cl2 p-b-7">
												문의하기
											</h5>

											<p class="stext-102 cl6">
												문의 내용을 작성하세요.
											</p>

											<div class="flex-w flex-m p-t-50 p-b-23">

											</div>

											<div class="row p-b-25">
												<div class="col-12 p-b-5">
													<label class="stext-102 cl3" for="review">문의하기</label>
													<textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="review" name="review"></textarea>
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="name">이름</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name" type="text" name="name">
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="email">이메일</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email" type="text" name="email">
												</div>
											</div>

											<button class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
												제출
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
						
						
					</div>
				</div>
			</div>
		</div>

		<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
			<span class="stext-107 cl6 p-lr-25">
				SKU: JAK-01
			</span>

			<span class="stext-107 cl6 p-lr-25">
				Categories: Jacket, Men
			</span>
		</div>
	</section>


	<!-- Related Products -->
	<section class="sec-relate-product bg0 p-t-45 p-b-105">
		<div class="container">
			<div class="p-b-45">
				<h3 class="ltext-106 cl5 txt-center">
					Related Products
				</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">
					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="resources/images/product-01.jpg" alt="IMG-PRODUCT">
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Esprit Ruffle Shirt
									</a>

									<span class="stext-105 cl3">
										$16.64
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="resources/images/product-02.jpg" alt="IMG-PRODUCT">
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Herschel supply
									</a>

									<span class="stext-105 cl3">
										$35.31
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="resources/images/product-03.jpg" alt="IMG-PRODUCT">
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Only Check Trouser
									</a>

									<span class="stext-105 cl3">
										$25.50
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="resources/images/product-04.jpg" alt="IMG-PRODUCT">
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Classic Trench Coat
									</a>

									<span class="stext-105 cl3">
										$75.00
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="resources/images/product-05.jpg" alt="IMG-PRODUCT">
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Front Pocket Jumper
									</a>

									<span class="stext-105 cl3">
										$34.75
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="resources/images/product-06.jpg" alt="IMG-PRODUCT">
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Vintage Inspired Classic 
									</a>

									<span class="stext-105 cl3">
										$93.20
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="resources/images/product-07.jpg" alt="IMG-PRODUCT">
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Shirt in Stretch Cotton
									</a>

									<span class="stext-105 cl3">
										$52.66
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img src="resources/images/product-08.jpg" alt="IMG-PRODUCT">
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Pieces Metallic Printed
									</a>

									<span class="stext-105 cl3">
										$18.96
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04" src="resources/images/icons/icon-heart-01.png" alt="ICON">
										<img class="icon-heart2 dis-block trans-04 ab-t-l" src="resources/images/icons/icon-heart-02.png" alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
		

	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Categories
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								여성
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								남성
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								가방
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Help
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Track Order
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Returns 
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shipping
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								FAQs
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						GET IN TOUCH
					</h4>

					<p class="stext-107 cl7 size-201">
					상호명 : wearIt  <br/>
					소재지 : 서울특별시 마포구 백범로 23  <br/>
					사업자번호 : 000-11-22222 	
					</p>

					
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Newsletter
					</h4>

					<form>
						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div>

						<div class="p-t-18">
							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Subscribe
							</button>
						</div>
					</form>
				</div>
			</div>

			

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> &amp; distributed by <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
	
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="resources/images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
								<form action="/upload" method="post" enctype="multipart/form-data">
									<c:forEach items="${goodsList}" var="GoodsVO" varStatus="loop">
										<div class="slick3 gallery-lb">
											<div class="item-slick3"
												data-thumb="/resources/images/uploads/${GoodsVO.goodsImgAddr}">
												<div class="wrap-pic-w pos-relative">
													<img src="/resources/images/uploads/${GoodsVO.goodsImgAddr}" alt="${GoodsVO.goodsImgName} 이미지" class="product-image">
													<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="/resources/images/uploads/${GoodsVO.goodsImgAddr}">
														<i class="fa fa-expand"></i>
													</a>
												</div>
											</div>
										</div>

										 <!-- <div class="item-slick3"
												data-thumb="resources/images/product-detail-02.jpg">
												<div class="wrap-pic-w pos-relative">
													<img src="resources/images/product-detail-02.jpg"
														alt="IMG-PRODUCT"> <a
														class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
														href="resources/images/product-detail-02.jpg"> <i
														class="fa fa-expand"></i>
													</a>
												</div>
											</div>

											<div class="item-slick3"
												data-thumb="resources/images/product-detail-03.jpg">
												<div class="wrap-pic-w pos-relative">
													<img src="resources/images/product-detail-03.jpg"
														alt="IMG-PRODUCT"> <a
														class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
														href="resources/images/product-detail-03.jpg"> <i
														class="fa fa-expand"></i>
													</a>
												</div>
											</div>  -->
										</div>
									</c:forEach>
								</form>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">Lightweight
								Jacket</h4>

							<span class="mtext-106 cl2"> $58.79 </span>

							<p class="stext-102 cl3 p-t-23">Nulla eget sem vitae eros
								pharetra viverra. Nam vitae luctus ligula. Mauris consequat
								ornare feugiat.</p>


							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
										data-tooltip="Add to Wishlist"> <i
										class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<!--===============================================================================================-->	
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>
	
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
		
		
		
		// 장바구니 버튼 클릭 이벤트 핸들러
$('.js-addcart-detail').click(function() {
  var button = $(this);
  var gno = button.data('gno');
  var cartAmount = $('#quantity-input').val();

  // 제품 정보 JSON 객체로 묶기
  var productInfo = {
    gno: gno,
    cartAmount: cartAmount
  };

  // 서버로 선택한 제품 정보 전송
  $.ajax({
    url: "http://localhost:8080/zWeaRitq/add-to-cart",
    type: "POST",
    data: JSON.stringify(productInfo),
    contentType: "application/json",
    success: function(data) {
      if (data === "로그인이 필요합니다.") {
        // 경고창으로 메시지 표시
        alert("장바구니에 제품을 추가하려면 로그인이 필요합니다.");
      } else {
        // 성공 메시지                        
        alert("장바구니에 제품이 성공적으로 추가되었습니다.");
      }
    },
    error: function(err) {
      console.log("Error:", err);
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
		
		
		
		
		
<!-- 장바구니 페이지(shopping-cart) 이동 -->
/* $('#go-to-cart-button').click(function(){
	// shopping-cart 페이지 이동
	console.log("버튼 클릭됨");
	window.location.href= 'http://localhost:8180/zWearit/shopping-cart';
}); */
		
		
		
	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/slick/slick.min.js"></script>
	<script src="resources/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/vendor/sweetalert/sweetalert.min.js"></script>
		
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
			e.preventDefault();
		});

		/*---------------------------------------------*/

	</script>
<!--===============================================================================================-->
	<script src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>
	

</body>
</html>