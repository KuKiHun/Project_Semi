<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html
  lang="ko"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/zWeaRit/resources/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>weaRit 관리자모드 - 전체회원조회</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/zWeaRit/resources/assets/img/logo/wearitLogo_crop_small.png" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="/zWeaRit/resources/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/zWeaRit/resources/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/zWeaRit/resources/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/zWeaRit/resources/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/zWeaRit/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->
    
    <!-- My CSS -->
    <link rel="stylesheet" href="/zWeaRit/resources/assets/css/myCss.css" />

    <!-- Helpers -->
    <script src="/zWeaRit/resources/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/zWeaRit/resources/assets/js/config.js"></script>
  </head>

  <body>
  <form action="allMemberInquiry">
    <%@ include file="/WEB-INF/views/fix/header.jsp" %>

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">회원 관리/</span> 전체 회원 조회</h4>

              <!-- Basic Layout & Basic with Icons -->
              <div class="row">
                <!-- Basic Layout -->
                <div class="col-xxl">
                  <div class="card mb-4">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="mb-0">회원 정보</h5>
                    </div>
                    <div class="card-body" style="overflow-x:auto; overflow-y:auto;">
                      <table class="table table-bordered table_set" id="listTable">
                        <thead>
                          <tr>
                            <th>회원번호</th>
                            <th>아이디</th>
                            <th>이름</th>
                            <th>닉네임</th>
                            <th>등급</th>
                            <th>연락처</th>
                            <th>이메일</th>
                            <th>우편번호</th>
                            <th>주소</th>
                            <th>성별</th>
                            <th>생년월일</th>
                            <th>회원가입일</th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${allMemberList }" var="MemberVO">
                          <tr>
                        	<td>${MemberVO.mno }</td>
                        	<td>${MemberVO.memberId }</td>
                        	<td>${MemberVO.memberName }</td>
                        	<td>${MemberVO.memberNickname }</td>
                        	<td>${MemberVO.memberLevel }</td>
                        	<td>${MemberVO.memberTel }</td>
                        	<td>${MemberVO.memberEmail }</td>
                        	<td>${MemberVO.memberPostcode }</td>
                        	<td>${MemberVO.memberAddr }</td>
                        	<td>${MemberVO.memberGender }</td>
                        	<td>${MemberVO.memberBirth }</td>
                        	<td>${MemberVO.joinDate }</td>
                          </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                      
                      <hr style="visibility:hidden" />
                      	<nav aria-label="Page navigation example">
					      <ul class="pagination justify-content-center">
					        <li class="page-item">
					          <a class="page-link" href="#" aria-label="Previous">
					            <span aria-hidden="true">&laquo;</span>
					          </a>
					        </li>
					        <li class="page-item">
					          <a class="page-link" href="#" aria-label="Previous">
					            <span aria-hidden="true">&lsaquo;</span>
					          </a>
					        </li>
					        <li class="page-item active"><a class="page-link" href="#">1</a></li>
					        <!-- <li class="page-item"><a class="page-link" href="#">2</a></li>
					        <li class="page-item"><a class="page-link" href="#">3</a></li> -->
					        <li class="page-item">
					          <a class="page-link" href="#" aria-label="Previous">
					            <span aria-hidden="true">&rsaquo;</span>
					          </a>
					        </li>
					        <li class="page-item">
					         <a class="page-link" href="#" aria-label="Next">
					          <span aria-hidden="true">&raquo;</span>
					         </a>
					        </li>
					      </ul>
					    </nav>
                    </div>
                        
                        
                
              </div>
            </div>
            <!-- / Content -->

<%@ include file="/WEB-INF/views/fix/footer.jsp" %>

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

    <!-- / Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="/zWeaRit/resources/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="/zWeaRit/resources/assets/vendor/libs/popper/popper.js"></script>
    <script src="/zWeaRit/resources/assets/vendor/js/bootstrap.js"></script>
    <script src="/zWeaRit/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="/zWeaRit/resources/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="/zWeaRit/resources/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </form>
  </body>
</html>
