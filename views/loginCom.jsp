<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인성공페이지</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/x-icon" 
	href="resources/images/wearitLogo_crop_small.png">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
<style>
#bgimage {
	filter: saturate(100%);
	opacity: 0.5;
}

#logoimage {
	width: 170px;
	height: auto;
}
</style>

  <!-- 
    <script>
        window.onload = function() {
            checkLoginStatus(); // 페이지 로딩 시 로그인 상태 확인
        };

        function checkLoginStatus() {
            // 여기서 서버로 로그인 상태를 요청하고 응답을 받습니다. 예를 들어, 서버에서 'isLoggedIn' 값을 받아오는 것을 가정합니다.
            var isLoggedIn = true; // 여기에 실제 로그인 상태를 가져오는 로직을 넣으셔야 합니다.

            if (isLoggedIn) {
                changeToLogoutButton();
            } else {
                changeToLoginButton();
            }
        }
		
        function changeToLogoutButton() {
            // 로그아웃 버튼으로 변경하는 작업 (예: id가 loginButton인 버튼을 찾아 텍스트를 '로그아웃'으로 변경)
            var loginButton = document.getElementById('loginButton');
            if (loginButton) {
                loginButton.innerHTML = '로그아웃';
                loginButton.onclick = function() {
                    // 여기에 로그아웃 로직을 구현하세요.
                    // 로그아웃 요청을 서버로 보내고, 성공 시 다시 changeToLoginButton 함수를 호출합니다.
                    changeToLoginButton();
                };
            }
        }

        function changeToLoginButton() {
            // 로그인 버튼으로 변경하는 작업 (예: id가 loginButton인 버튼을 찾아 텍스트를 '로그인'으로 변경)
            var loginButton = document.getElementById('loginButton');
            if (loginButton) {
                loginButton.innerHTML = '로그인';
                loginButton.onclick = function() {
                    // 여기에 로그인 버튼을 눌렀을 때의 동작을 구현하세요.
                };
            }
        }
    </script>
 -->
</head>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- jQuery 라이브러리를 불러옵니다. -->
<script>
$(document).ready(function() {
    // 로그아웃 버튼 클릭 시 처리
    $("#logoutButton").on("click", function() {
        // Ajax 요청을 통해 로그아웃 서버 처리를 호출
        $.ajax({
            url: "/logout.do", // 로그아웃 처리를 담당하는 컨트롤러 경로로 수정하세요.
            method: "POST", // GET 또는 POST, HTTP 메소드를 사용하세요.
            success: function(response) {
                // 로그아웃 성공 시, 페이지 리로드 또는 다른 동작을 수행할 수 있습니다.
                location.reload(); // 페이지 리로드 예시
            },
            error: function() {
                // 오류 처리
                alert("로그아웃에 실패했습니다.");
            }
        });
    });
});
</script>



<body class="animsition">

	<!-- Header -->
	<header>
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

						<a href="customerService.do" class="flex-c-m trans-04 p-lr-25">
							고객센터
						</a>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">
				
					<!-- Logo desktop -->		
					<a href="index.do" class="logo">
						<img src="resources/images/icons/wearitLogo.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="index.do">홈</a>
							</li>

							<li>
								<a href="product.do">구매</a>
							</li>

							<li>
								<a href="rental.do">렌탈</a>
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
									<li><a href="#">내 글 보기</a></li>
								</ul>
							</li>
						</ul>
					</div>	
					

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<a href="shopping-cart" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
							<i class="zmdi zmdi-shopping-cart"></i>
						</a>

						<a href="wish-list.do" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
							<i class="zmdi zmdi-favorite-outline"></i>
						</a>
					</div>
				</nav>
			</div>	
		</div>
		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->
			<div class="logo-mobile">
				<a href="index.jsp"><img
					src="resources/images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
					data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#"
					class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
					data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
			</div>
		</div>



		<!-- Modal Search -->
		<div
			class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button
					class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="resources/images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search"
						placeholder="Search...">
				</form>
			</div>
		</div>
	</header>



	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" id="bgimage"
		style="background-image: url('resources/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">login</h2>
	</section>


	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">

		<h4 class="mtext-105 cl2 txt-center p-b-30">로그인 되었습니다!</h4>
		<h4 class="mtext-104 cl2 txt-center p-b-30">
			<%=session.getAttribute("logname")%>
			회원님, 환영합니다!
		</h4>
		<h4 class="mtext-104 cl2 txt-center p-b-30">weaRit을 항상 이용해 주셔서
			감사합니다.</h4>
		<h4 class="mtext-104 cl2 txt-center p-b-30">아래 버튼을 클릭하시면 메인 페이지로
			이동합니다.</h4>
		<div style="width:160px; margin:auto; display:block;">
		<a href="index.do">
			<button
				class="flex-c-m stext-103 cl0 size-127 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
				메인페이지로 이동</button>
		</a>
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
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
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
	</script>
	<!--===============================================================================================-->
	<script
		src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="js/map-custom.js"></script>
	<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>

</body>
</html>