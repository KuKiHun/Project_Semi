<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>${post.postTitle }</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
    
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>

 $(document).ready(function(){
	    $("#updatebtn").click(function() {
	        var inputPass = $("#postPass").val();
	        var realPass = $("#realpw").val();
	        
	        console.log(realPass);
	        console.log(inputPass);
	        
	        if(inputPass==realPass){
	        	location.href = "/updatePost.do?pono=" + $("#pono").val();
	        } else { 
	        	alert("비밀번호가 일치하지 않습니다.")
	        	event.preventDefault();
	        };
	       
	    });
	    
	   /*  $("#insertbtn").click(function() {
	    	location.href = "/insertPost.do";
	    }); */
	    
	    /* $(document).on("click","#deletebtn",function(){
	    	
	    	var inputPass = $("#postPass").val();
	        var realPass = $("#realpw").val();
	        
	        console.log(realPass);
	        console.log(inputPass);
	        
	        if(inputPass==realPass){
	        	location.href = "/deletePost.do?pono=" + $("#pono").val();
	        } else { 
	        	alert("비밀번호가 일치하지 않습니다.")
	        	event.preventDefault();
	        };
	    }); */
	    
	    /* $("#postbtn").click(function(){
	    	location.href = "/community.do";
	    }); */
	        
	});
 

</script>
<style>
#bgimage {
        filter: saturate(100%);
        opacity: 0.5;
        margin-bottom: 30px; 
	}
	
#logoimage {
		width: 170px;
		height: auto;
}

/*  #commu {
	width:100%;
	padding:30px;
	position:relative;
	
}  */

</style>


</head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title> 
</head>

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

	<!-- Cart -->
<!-- 	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					Your Cart
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="resources/images/item-cart-01.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								White Shirt Pleat
							</a>

							<span class="header-cart-item-info">
								1 x $19.00
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="resources/images/item-cart-02.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Converse All Star
							</a>

							<span class="header-cart-item-info">
								1 x $39.00
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="resources/images/item-cart-03.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Nixon Porter Leather
							</a>

							<span class="header-cart-item-info">
								1 x $17.00
							</span>
						</div>
					</li>
				</ul>
				
				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">
						Total: $75.00
					</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="shoping-cart.do" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							View Cart
						</a>

						<a href="shoping-cart.do" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
							Check Out
						</a>
					</div>
				</div>
			</div>
		</div>
	</div> -->


	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" id="bgimage" style="background-image: url('resources/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			Community
		</h2>
	</section>
	
		<h1>글 상세</h1>		
		<hr>
		<form action="updatePost.do" method="post">
			<input name="pono" type="hidden" value="${post.pono}" />
			<table border="1" class="table table-bordered">
				<tr>
					<td bgcolor="#DCD3CB">제목</td>
					<td align="left">${post.postTitle }</td>
				</tr>
				<tr>
					<td bgcolor="#DCD3CB">작성자</td>
					<td align="left">${post.postWriter }</td>
				</tr>
				<tr>
					<td bgcolor="#DCD3CB" >내용</td>
					<td align="left" style="width:100%; height:300px;">${post.postContent }</td>
				</tr>
				<tr>
					<td bgcolor="#DCD3CB" >등록일</td>
					<td align="left">${post.postDate }</td>
				</tr>
				<!--<tr>
					<td bgcolor="#DCD3CB" >조회수</td>
					<td align="left">${post.postCnt }</td>
				</tr>-->
				<!-- #### 첨부파일을 보여주고자 한다면 -->
				<!--<c:if test="${post.postFilesize}!=null">
				<tr>
					<td bgcolor="#DCD3CB" colspan="2" align="center">
						<a href="resources/upload/${ post.postFileaddr }">
							<img src="resources/upload/${ post.postFileaddr }">	
						</a>
					</td>
				</tr> 
				</c:if>
				<c:if test="${post.postFilesize}==null">
				<tr>
					<td bgcolor="#DCD3CB" colspan="2" align="center">		
						파일이 없습니다.
					
					</td>
				</tr>
				</c:if> -->
				<tr>
					<td bgcolor="#DCD3CB" >비밀번호</td>
					<td align="left"><input type="password" id="postPass" name="postPass" value=""></td>
				</tr>
				<tr>
        			<td colspan="2" align="right">			
                		<button id="updatebtn" name="updatebtn"> 글 수정 </button>        			      			
        			</td>
    			</tr>
			</table>
		</form>
		<hr>
		
		<!-- 1. 댓글입력 -->
		<!-- <form name='replyFrm' id='replyFrm' >
		<input type='hidden' name='pono' id='pono' value='${post.pono}'>
		<h4>댓글 작성</h4>
		<table>
		<tr>
			<td>
			<label for="replyer">댓글 작성자</label>
			<input type='text' name='replyer' id='replyer' value="">
			</td>
		</tr>
		<tr>
			<td>
			<label for="replypass">댓글 비밀번호</label>
			<input type='password' name='replypass' id='replypass' value=""><br/>
			</td>
		</tr>
		<tr>
			<td>
			<label for="reply">댓글 내용</label>
			<input type='text' name='reply' id='reply' style="width:600px; height:200px;" value="">
			</td>
		</tr>
		<tr>
			<td>
			<button type="submit" id='replyConfirm'> 댓글 작성 </button>
			</td>
		</tr>
		</table>
		
		</form> -->

		<!-- 2. 댓글목록 
		<table id='replyList' border='2'/> 
		-->
		<hr>
		<!--  <a href="insertPost.do">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deletePost.do?pono=${post.pono }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="community.do">글목록</a>  -->
		<button id="insertbtn" name="insertbtn" onclick="location.href='insertPost.do'"> 글 등록 </button> &nbsp;&nbsp;&nbsp; 
		<!-- <button id="deletebtn" name="deletebtn"> 글 삭제 </button> &nbsp;&nbsp;&nbsp;  -->
		<button id="postbtn" name="postbtn" onclick="location.href = 'community.do'"> 글 목록 </button> &nbsp;&nbsp;&nbsp; 
		
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
	
<input type="hidden" id="realpw" name="realpw" value="${post.postPass}">
<input type='hidden' name='pono' id='pono' value='${post.pono}'>
<input type="hidden" name="postContent" id="postContent" value="${post.postContent }">

</body>
</html>
