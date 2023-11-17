<%@ page contentType="text/html;charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>고객센터</title>
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
/* 기본 스타일 */
.tab-button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #333;
	color: #fff;
	cursor: pointer;
	border: none;
	border-radius: 5px 5px 0 0;
}

.tab-content {
	display: none;
	padding: 20px;
	border: 1px solid #333;
	border-radius: 0 0 5px 5px;
}

/* 초기 선택된 탭 스타일 */
.active-tab {
	display: block;
}

/* 버튼 호버 효과 */
.tab-button:hover {
	background-color: #555;
}
</style>
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
							<li>
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

	<div class="p-t-200">
		<section style="margin-left:20px; margin-right:20px">
			<table>
				<tr>
					<td>
						<button class="tab-button" onclick="openTab('tab1')">공지사항</button>
					</td>
					<td>
						<button class="tab-button" onclick="openTab('tab2')">FAQ</button>
					</td>
					<td>
						<button class="tab-button" onclick="openTab('tab3')">1:1문의</button>
					</td>
					<td>
						<button class="tab-button" onclick="openTab('tab4')">이용약관</button>
					</td>
					<td>
						<button class="tab-button" onclick="openTab('tab5')">개인정보처리방침</button>
					</td>
				</tr>
			</table>

			<div id="tab1" class="tab-content active-tab">
			  <h3>공지사항</h3>
			  <hr style="visibility:hidden">
			  <c:forEach items="${noticeList }" var="notice">
				<ul>
				  <li>
				  	<p>&nbsp;${notice.pono }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">${notice.postTitle }</a>
					</p>
					<hr>
				  </li>
				</ul>
			  </c:forEach>
			</div>

			<div id="tab2" class="tab-content">
			  <h3>FAQ</h3>
			  <hr style="visibility:hidden">
				<ul>
				  <li>
				  	<p><b>Q. 대여한 아이템에 뭐가 묻었는데, 지워지지 않아요 어떻게 하나요?</b></p>
				  	<br>
				  	<p>A. 이용하신 아이템에 오염이 발생한 경우 즉시 weaRit 고객센터로 연락주세요.</p>
				  	<p>(수선이나 세탁을 직접 진행하는경우 아이템에 대한 손상이 발생될 수 있으므로 weaRit에서 확인)</p>
				  	<br>
				  	<p>내부적으로 해결이 불가능하여 별도의 세탁 또는 수선이 필요한 경우에는 수선비용이 청구되며, 수선이 불가능한 영구적인 오염의 경우는 아이템을 구매하셔야 합니다.</p>
				  	<hr>
				  </li>
				  <li>
				  	<p><b>Q. 대여한 아이템이 파손이 되었어요. 어떻게 해야 하나요?</b></p>
				  	<br>
				  	<p>A. 수선이 가능한 경우에는 수선비용이 청구되며 수선이 불가능한 경우에는 아이템을 구매하셔야 합니다.</p>
				  	<hr>
				  </li>
				  <li>
				  	<p><b>Q. 대여한 아이템이 분실 되었을때는 어떻게 해야하나요?</b></p>
				  	<br>
				  	<p>A. 개인적으로 해결하지 마시고 weaRit 고객센터로 연락 주시면 신속하게 안내드리겠습니다.</p>
				  	<hr>
				  </li>
				  <li>
				  	<p><b>Q. 택배반납의 경우 어떻게 하면 되나요?</b></p>
				  	<br>
				  	<p>A. 주문시 전달받은 weaRit 박스에 넣어주시면 되며, 박스를 분실한 경우 튼튼한 박스에 성함, 연락처, 웨어릿 기재하여 아이템 손상방지 용품과 함께 보내주시면 됩니다.</p>
				  	<hr>
				  </li>
				  <li>
			  		<p><b>Q. 반납이 되지 않으면 어떻게 되나요?</b></p>
			  		<br>
			  		<p>부득이한 상황이 생겨 방문날짜에 반납하지 못하신 경우 1대1 문의로 연락주세요.</p>
			  		<p>정상적으로 반납이 이루어지지 않을 경우 이후 1일마다 1만원의 연체료가 발생하게 됩니다. 반드시 제 날짜에 반납하실 수 있도록 신경써 주시기 바랍니다.</p>
				  	<br>
				  	<p>3일 이상 반납지연 및 연락이 안 될 경우 형사고발 조치 될 수 있습니다.</p>
				  </li>
				</ul>
			</div>

			<div id="tab3" class="tab-content">
			  <h3>1:1문의</h3>
			  
			  <hr style="visibility:hidden">
			  <c:forEach items="${inquiryList }" var="inquiry">
				<ul>
				  <li>
				  	<p>&nbsp;${inquiry.pono }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">${inquiry.postTitle }</a>
					</p>
					<hr>
				  </li>
				</ul>
			  </c:forEach>
			  <a href="customerInquiry">
			    <button class="btn btn-xs btn-light">문의하기</button>
			  </a>
			</div>

			<div id="tab4" class="tab-content">
				<h3>weaRit/스토어 이용약관</h3>
				<hr style="visibility:hidden">
				<ul>
				  <li>
					<p><b>제1장 총칙</b></p>
					<br>
				    <p><b>제1조(목적)</b></p>
					<p>이 약관은 weaRit(이하 “회사”)가 운영하는 사이버 몰에서 제공하는 인터넷 관련 서비스를 이용함에 있어 사이버 몰과 “이용자”의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.</p>
				  	<br>
				  </li>
				  <li>
				  	<p><b>제2조(정의)</b></p>
				  	<p>① “몰”이란 회사가 재화 또는 용역(이하 “재화 등”)을 “이용자”에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 사이버몰을 말합니다.</p>
				  	<p>② “이용자”란 “몰”에 접속하여 이 약관에 따라 “회사”가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.</p>
				  	<p>③ “회원”이라 함은 “몰”에 회원 가입을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.</p>
				  	<p>④ “판매자”란 “회사”와 “인터넷 쇼핑몰 입점 계약”을 체결하고 “몰”에서 재화 등을 판매하는 자를 말합니다.</p>
				  	<br>
				  </li>
				  <li>
				  	<p><b>제3조 (약관 등의 명시와 설명 및 개정)</b></p>
				  	<p>① “회사”는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자등을 “이용자”가 쉽게 알 수 있도록 ”몰”의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 “이용자”가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.</p>
				  	<p>② “회사”는 “이용자”가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한 내용을 “이용자”가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 “이용자”의 확인을 구하여야 합니다.</p>
				  	<p>③ “회사”는 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</p>
				  	<p>④ “회사”는 이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 “몰”의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지하고 “이용자”에게 통지합니다. 다만, “이용자”에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지 및 통지합니다. 이 경우 "회사“는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 “이용자”가 알기 쉽도록 표시합니다.</p>
				  	<p>⑤ “이용자”는 개정 약관이 게시되거나 통지된 후부터 변경되는 약관의 시행일 전의 영업일까지 개정 전 약관조항에 따라 체결된 계약을 해지할 수 있고, 약관의 개정내용에 대하여 이의를 제기하지 아니하는 경우에는 약관의 개정을 승인한 것으로 봅니다.</p>
				  	<p>⑥ 회사는 제공하는 서비스 내의 개별 서비스에 대한 별도의 약관 또는 이용조건(이하 “타 약관”이라 한다)을 둘 수 있으며, 이 약관의 동의와는 별개로 회원에게 타 약관에 대한 동의를 받은 후 타 약관을 적용합니다. 이 경우 타 약관은 이 약관에 우선합니다.</p>
				  	<p>⑦ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.</p>
				  	<br>
				  </li>
				  <li>
				  	<p><b>제4조(서비스의 제공 및 변경)</b></p>
				  	<p>① “회사”는 다음과 같은 업무를 수행합니다.</p>
				  	<p>1. 재화 등의 거래 및 정보 제공을 위한 플랫폼의 운영 및 개발 업무</p>
				  	<p>2. 재화 등의 정보 검색 지원 업무</p>
				  	<p>3. 재화 등의 구매 관련 지원 업무</p>
				  	<p>4. 대금의 결제 및 정산 관련 업무</p>
				  	<p>5. 기타 전자상거래와 관련하여 “회사”가 정하는 업무</p>
				  	<p>② “회사”는 재화 등의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 등의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 등의 내용을 게시한 곳에 즉시 공지합니다.</p>
				  	<p>③ “몰”이 제공하기로 “이용자”와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 “이용자”에게 통지 가능한 주소로 즉시 통지합니다.</p>
				  	<p>④ 제3항에 따라 서비스의 내용을 변경하여 “이용자”에게 손해가 발생한 경우 “회사”는 그 손해를 배상합니다. 다만, “회사”가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</p>
				  	<br>
				  </li>
				  <li>
				  	<p><b>제5조(서비스의 중단)</b></p>
				  	<p>① “회사”는 컴퓨터 등 정보통신설비의 보수점검․교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</p>
				  	<p>② “회사”는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 “이용자” 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “회사”가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</p>
				  	<br>
				  </li>
				</ul>
			</div>

			<div id="tab5" class="tab-content">
			  <h3>개인정보처리방침</h3>
			  <hr style="visibility:hidden">
				<ul>
				  <li>
					<p>weaRit(이하 "회사"라 합니다)는 이용자들의 개인정보보호를 매우 중요시하며, 이용자가 회사의 weaRit(http://118.217.203.44:8080/zWeaRit/index.do) 쇼핑몰 서비스(이하 "서비스"라 합니다)를 이용함과 동시에 온라인상에서 회사에 제공한 개인정보가 보호 받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 개인정보보호법에 따라 정보통신서비스제공자가 준수하여야 할 관련 법규상의 개인정보보호 규정을 준수하고 있습니다.</p>
			      	<p>회사는 개인정보처리방침을 통하여 이용자들이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.</p>
			      	<p>weaRit 개인정보처리방침은 다음과 같은 내용을 담고 있습니다.</p>
			      	<br>
			      </li>
			      <li>
			      	<p>가. 개인정보의 수집 및 이용목적</p>
			      	<p>나. 개인정보 보유 및 이용 기간</p>
			      	<p>다. 개인정보의 처리위탁</p>
			      	<p>라. 수집한 개인정보의 공유 및 제공</p>
			      	<p>마. 이용자의 권리(열람,정정,삭제 등)와 행사방법</p>
			      	<p>바. 개인정보 자동수집 장치의 설치/운영 및 거부에 관한 사항</p>
			      	<p>사. 행태정보의 수집･이용 및 거부 등에 관한 사항</p>
			      	<p>아. 개인정보보호를 위한 기술적-관리적 대책</p>
			      	<p>자. 개인정보 파기절차 및 방법</p>
			      	<p>차. 개인정보 보호책임자 및 담당부서 안내</p>
			      	<br>
			      </li>
			      <li>
			      	<p><b>가. 개인정보의 수집 및 이용목적</b></p>
			      	<p>- 서비스 이용시 필수 수집 항목</p>
			      	<table class="table align-middle table-bordered">
			      	  <thead>
			      	  	<tr>
			      	  	  <td>수집 목적</td>
			      	  	  <td>수집 항목</td>
			      	  	  <td>보유 및 이용 기간</td>
			      	  	</tr>
			      	  </thead>
			      	  <tbody>
			      	    <tr>
			      	  	  <td>- 본인인증</td>
			      	  	  <td>이름, 성별, 생년월일, 휴대폰번호, CI/DI, 내/외국인정보, 본인인증결과</td>
			      	  	  <td rowspan="8">
			      	  	    <p>- 탈퇴 요청 5일 후 지체없이 파기</p>
			      	  	    <p>- 내부 방침에 의해 서비스 부정이용 기록은 부정 가입 및 이용방지를 위하여 회원탈퇴 시점으로부터 1년간 보관 후 파기</p>
			      	  	    <p>- 단, 관계법령에 따라 일정기간 보존해야 하는 경우 해당 기간 보관후 파기</p>
			      	  	  </td>
			      	  	</tr>
			      	  	<tr>
			      	  	  <td rowspan="2">
			      	  	  	<p>- weaRit 회원 가입의사 확인 및 회원관리 (회원제 서비스 제공)</p>
			      	  	  	<p>- 서비스의 변동 및 약관 변경 등의 고지를 위한 안내</p>
			      	  	  	<p>- weaRit 서비스 이용</p>
			      	  	  </td>
			      	  	  <td>아이디, 이메일, 비밀번호, 이름, 성별, 생년월일, 휴대폰번호, 내/외국인정보, CI/DI</td>
			      	  	</tr>
			      	  	<tr>
			      	  	  <td>
			      	  	  	<p>소셜 계정(카카오)를 통한 회원가입</p>
			      	  	  	<p>로그인 정보 식별값, 성별, 생년월일, 휴대폰번호, 이메일, CI</p>
			      	  	  </td>
			      	  	</tr>
			      	  	<tr>
			      	  	  <td>- 상품 구매</td>
			      	  	  <td>구매자 정보(이름, 이메일, 핸드폰번호, 전화번호), 수령자 정보(성명, 전화번호, 휴대전화번호, 주소)</td>
			      	  	</tr>
			      	  	<tr>
			      	  	  <td>- 현금 환불요청</td>
			      	  	  <td>환불계좌 정보(은행, 계좌번호, 예금주)</td>
			      	  	</tr>
			      	  	<tr>
			      	  	  <td>- 마이페이지 환불계좌 등록</td>
			      	  	  <td>은행, 계좌번호, 예금주</td>
			      	  	</tr>
			      	  	<tr>
			      	  	  <td>- 마이페이지 배송지 등록</td>
			      	  	  <td>수령인, 배송지명, 휴대전화번호, 전화번호, 주소</td>
			      	  	</tr>
			      	  </tbody>
			      	</table>
			      </li>
			  	</ul>
			</div>
		</section>
	</div>


	<script>
				function openTab(tabName) {
					var i, tabContent, tabButton;

					// 모든 탭 컨텐츠 숨기기
					tabContent = document.getElementsByClassName("tab-content");
					for (i = 0; i < tabContent.length; i++) {
						tabContent[i].style.display = "none";
					}

					// 모든 탭 버튼 비활성화
					tabButton = document.getElementsByClassName("tab-button");
					for (i = 0; i < tabButton.length; i++) {
						tabButton[i].classList.remove("active-tab");
					}

					// 선택한 탭 보여주기
					document.getElementById(tabName).style.display = "block";

					// 선택한 탭 버튼 활성화
					document.querySelector("[onclick='openTab('" + tabName
							+ "')']").classList.add("active-tab");
				}
			</script>
	
	<div class="size-303"></div>



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
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
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
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>

</body>
</html>