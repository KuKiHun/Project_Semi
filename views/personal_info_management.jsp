<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>개인정보관리</title>
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
	<link rel="stylesheet" type="text/css" href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
    <link rel="icon" type="image/x-icon" href="resources/images/wearitLogo_crop_small.png">
    
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

</head>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
  $(document).ready(function () {
    // 폼이 제출될 때 호출되는 함수
    $("#memberFrm").submit(function (event) {
      // 비밀번호와 비밀번호 확인 필드의 값을 가져옴
      var password = $("#password").val();
      var passcheck = $("#passcheck").val();
      
      
    });
  }); 
</script>
<script>
  function validateForm() {
    // 아이디, 비밀번호, 이름에 대한 유효성 검사 수행
	  return (
		      validateId() &&
		      validatePassword() &&
		      validateName() &&
		      validateNickname() &&
		      validateAddress() &&
		      validateDetailAddress() &&
		      validatePostcode() &&
		      validateTel() &&
		      validateBirth()
		    );
		  }


  function validatePassword() {
    var password = $("#password").val();
    var passwordError = $("#passwordError");

    // 비밀번호는 영어, 숫자, 특수문자를 포함하여 8자 이상 30자 이하여야 함
    var passwordRegex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,30}$/;

    if (!passwordRegex.test(password)) {
    	alert("비밀번호는 영어, 숫자, 특수문자를 조합하여 8자 이상 30자 이하로 작성해야 합니다.");
        return false;
      } else {
        return true;
    }
  }


  function validateNickname() {
	    var nickname = $("#nickname").val();
	    var nicknameError = $("#nicknameError");

	    // 닉네임은 한글, 영어, 숫자를 포함하여 20자 이하여야 함
	    var nicknameRegex = /^[가-힣a-zA-Z0-9]{1,20}$/;

	    if (!nicknameRegex.test(nickname)) {
	      alert("닉네임은 한글이나 영어, 숫자를 사용하여 20자 이하로 작성해야 합니다.");
	      return false;
	    } else {
	      return true;
	    }
	  }

  function validateTel() {
    var tel = $("#tel").val();
    var telError = $("#telError");

    // 전화번호는 숫자만 포함하여 30자 이하여야 함
    var telRegex = /^[0-9]{1,30}$/;

    if (!telRegex.test(tel)) {
      alert("전화번호는 숫자만 사용하여 30자 이하로 작성해야 합니다.");
      return false;
    } else {
      return true;
    }
  }

  function validatePostcode() {
	    var postcode = $("#postcode").val();
	    var postcodeError = $("#postcodeError");

	    // 우편번호는 숫자만 포함하여 10자 이하여야 함
	    var postcodeRegex = /^[0-9]{1,10}$/;

	    if (!postcodeRegex.test(postcode)) {
	      alert("우편번호는 숫자만 사용하여 10자 이하로 작성해야 합니다.");
	      return false;
	    } else {
	      return true;
	    }
	  }

	  function validateAddress() {
	    var address = $("#addr").val();
	    var addressError = $("#addrError");

	    // 주소는 한글과 숫자만 포함하여 255자 이하여야 함
	    var addressRegex = /^[가-힣0-9\s]{1,255}$/;

	    if (!addressRegex.test(address)) {
	      alert("주소는 한글이나 숫자만 사용하여 255자 이하로 작성해야 합니다.");
	      return false;
	    } else {
	      return true;
	    }
	  }

	  function validateDetailAddress() {
	    var detailAddress = $("#detailAddr").val();
	    var detailAddressError = $("#detailAddrError");

	    // 상세주소는 한글, 영어, 숫자만 포함하여 255자 이하여야 함
	    var detailAddressRegex = /^[가-힣a-zA-Z0-9\s]{1,255}$/;

	    if (!detailAddressRegex.test(detailAddress)) {
	      alert("상세주소는 한글이나 영어, 숫자를 사용하여 255자 이하로 작성해야 합니다.");
	      return false;
	    } else {
	      return true;
	    }
	  }
	  
</script>
<!-- <script>
    // "message" 변수에 값이 있다면, alert를 통해 메시지를 표시합니다.
    var message = "${message}";
    if (message.trim() !== "") {
        alert(message);
    }
</script> -->

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
				<a href="index.do"><img src="resources/images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
					<i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
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

	


	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" id="bgimage" style="background-image: url('resources/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			개인정보수정
		</h2>
	</section>	


</script> 
	<!-- Content page -->
<script>
$(function(){
    $("#updateBtn").click(function() {
        // 수정에 필요한 정보 수집
        const memberPass = $("#password").val();
        const memberNickname = $("#nickname").val();
        const memberTel = $("#tel").val();
        const memberEmail = $("#email").val();
        const memberPostcode = $("#postcode").val();
        const memberAddr = $("#addr").val();

        // 서버로 데이터 전송 (Ajax POST 요청)
        $.ajax({
            type: 'POST',
            url: '/updateMember.do',
            contentType: 'application/json',
            data: JSON.stringify({
                memberPass: memberPass,
                memberNickname: memberNickname,
                memberTel: memberTel,
                memberEmail: memberEmail,
                memberPostcode: memberPostcode,
                memberAddr: memberAddr
            }),
            success: function(data) {
                alert(data.message); // 서버에서 받은 응답 메시지를 alert로 표시
                location.reload(); // 페이지 리로드
            },
            error: function(error) {
                console.error('수정 요청에 문제가 있습니다:', error);
            }
        });
    });
});
</script>	
	 <section class="bg0 p-t-104 p-b-116 section-1" >
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md" style="max-width:800px; margin: auto;">
					<form method="post" action="updateMember.do" name="memberInfoForm" id="memberInfoForm" onsubmit="return validateForm()">
						<h4 class="mtext-115 cl2 txt-center p-b-30">
							개인정보수정
						</h4>
						<label>아이디</label>
						<div class="bor8 m-b-20 how-pos4-parent" >
							<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-20" type="text" name="memberId" id="id" readonly
							value= "<%=session.getAttribute("logid")%>">
						</div>
						<label>비밀번호</label>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-20" type="password" name="memberPass" id="password"
							value="<%=session.getAttribute("logpass")%>" >
												
						</div>
						<label>이름</label>
						<div class="bor8 m-b-20 how-pos4-parent" >
							<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-20" type="text" name="memberName" id="name" readonly
							value="<%=session.getAttribute("logname")%>">
						</div>				
		
						<label>닉네임</label>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-20" type="text" name="memberNickname" id="nickname"
							value="<%=session.getAttribute("lognickname")%>">
						</div>
						<label>전화번호</label>
						<div class="bor8 m-b-20 how-pos4-parent">
							
								<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-20" id="tel" type="text" name="memberTel"
								value="<%=session.getAttribute("logtel")%>">
							
								<button class="flex-c-m stext-120 cl0 size-126 bg3 bor1 hov-btn3 p-lr-1 trans-04 pointer">
									전화번호 인증
								</button>
							
						</div>
						<label>이메일</label>
						<div class="bor8 m-b-20 how-pos4-parent">
							
								<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-20" type="email" name="memberEmail" id="email"
								value="<%=session.getAttribute("logemail")%>">
						
								<button class="flex-c-m stext-120 cl0 size-126 bg3 bor1 hov-btn3 p-lr-1 trans-04 pointer">
									이메일 인증
								</button>
						
						</div>
						<label>우편번호</label>
						<div class="bor8 m-b-20 how-pos4-parent" style="width:150px;">
								<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-20" type="text" name="memberPostcode" id="postcode"
								value="<%=session.getAttribute("logpostcode")%>">
						</div>
						
						<label>주소</label>
						<div class="bor8 m-b-20 how-pos4-parent">
								<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-20" type="text" name="memberAddr" id="addr"
								value="<%=session.getAttribute("logaddr")%>">
								<button class="flex-c-m stext-120 cl0 size-126 bg3 bor1 hov-btn3 p-lr-1 trans-04 pointer">
									주소 검색
								</button>
						</div>
						
						<label>상세주소</label>
						<div class="bor8 m-b-20 how-pos4-parent">
								<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-20" type="text" name="memberAddr" id="addr">
						</div>

						<button type="submit" id="updateBtn" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" >
							수정
						</button>
						
						<br></br>
						<button type="button" id="deleteUser" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer" >
							탈퇴하기
						</button>
					</form>
				</div>
	</section>
<!-- <script>
document.getElementById("updateBtn").addEventListener("click", function(event) {
    
    const memberPass = document.getElementById("password").value;
    const memberNickname = document.getElementById("nickname").value;
    const memberTel = document.getElementById("tel").value;
    const memberEmail = document.getElementById("email").value;
    const memberPostcode = document.getElementById("postcode").value;
    const memberAddr = document.getElementById("addr").value;
 
    

    fetch('/updateMember.do', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            
            memberPass: memberPass,
            memberNickname: memberNickname,
            memberTel: memberTel,
            memberEmail: memberEmail,
            memberPostcode: memberPostcode,
            memberAddr: memberAddr
        }),
    })
    .then(response => {
        if (response.ok) {
            return response.json();
        }
        throw new Error('Network response was not ok.');
    })
    .then(data => {
        alert(data.message); // 서버에서 받은 응답 메시지를 alert로 표시
    })
    .catch(error => {
        console.error('There has been a problem with your fetch operation:', error);
    });
});
</script> -->
 <!-- 	<script>
	document.getElementById("updateBtn").addEventListener("click", function(event) {
	    

	    // 여기에 입력된 데이터 수집
	    var memberId = document.getElementById("id").value;
	    var memberPass = document.getElementById("password").value;
	    var memberNickname = document.getElementById("nickname").value;
	    var memberTel = document.getElementById("tel").value;
	    var memberEmail = document.getElementById("email").value;
	    var memberPostcode = document.getElementById("postcode").value;
	    var memberAddr = document.getElementById("addr").value;

	    // 데이터를 서버로 전송
	    fetch('updateMember.do', {
	        method: 'POST',
	        headers: {
	            'Content-Type': 'application/json',
	        },
	        body: JSON.stringify({
	            memberId: memberId,
	            memberPass: memberPass,
	            memberNickname: memberNickname,
	            memberTel: memberTel,
	            memberEmail: memberEmail,
	            memberPostcode: memberPostcode,
	            memberAddr: memberAddr
	        })
	    })
	    .then(response => response.json())
	    .then(data => {
	        // 수정 완료 시, 알림 메시지 표시
	        alert(data.message);
	        // 수정 완료 후의 작업 추가 가능 (예: 페이지 새로고침)
	    })
	    .catch((error) => {
	        console.error('Error:', error);
	    });
	});
</script> -->

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
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
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
	<script src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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

<!--datepicker-->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script src ="resources/js/user-delete.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.9.2/i18n/jquery.ui.datepicker-ko.min.js"></script>

</html>