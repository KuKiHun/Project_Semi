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

    <title>weaRit 관리자모드 - 상품조회</title>

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
    
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  	
  	<!--datepicker-->
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.9.2/i18n/jquery.ui.datepicker-ko.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
  </head>


  <body>
    <%@ include file="/WEB-INF/views/fix/header.jsp" %>
	  <form action="goodsInquiry" method="get">
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">상품 관리/</span> 상품 조회</h4>

              <!-- Basic Layout & Basic with Icons -->
              <div class="row">
                <!-- Basic Layout -->
                <div class="col-xxl">
                  <div class="card mb-4">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="mb-0">상품 조회</h5>
                    </div>
                    <div class="card-body">
                      
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-name">검색어</label>
                          <div class="col-sm-10">
                          <table>
                          <tr>
                          <td>
                            <select id="searchCondition" name="searchCondition" class="form-select" style="width:120px">
                          	  <option value="goods_name">상품명</option>
                          	  <option value="brand_name">브랜드명</option>
                          	</select>
                          </td>
                          <td>
                          	<div class="col-sm-10">
                              <input type="text" id="inputKeyword" name="inputKeyword" class="form-control" placeholder="검색어를 입력하세요." style="width:450px"/>
                            </div>
                            </td>
                            </tr>
                          </table>
                          </div>
                          </div>
                          
                        </div>
                       <hr/>
                      <table>
                        <tr>
                    	  <td align="right" style="padding:0px 15px 15px 0px;">
                            <button type="reset" class="btn btn-secondary">초기화</button>
                            <button type="submit" id="btnSearch" class="btn btn-primary">검색</button>
                          </td>
                        </tr>
                      </table>
                    </div>
                  
                      
                  <div class="card mb-4">
                    <div class="card-header d-flex">
                      <h5 class="mb-0">상품 목록</h5>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <button type="submit" class="btn btn-xs btn-danger"
                      		  onclick="javascript: form.action='goodsDelete';">삭제</button>&nbsp;
                    </div>
                    <div class="card-body" style="overflow-x:auto;">
                      <table class="table table-bordered table_set" id="listTable">
                        <thead>
                          <tr>
                            <th>선택</th>
                            <th>상품번호</th>
                            <th>상품코드</th>
                            <th>상품명</th>
                            <th>브랜드명</th>
                            <th>판매가</th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${goodsList }" var="GoodsVO">
							<tr>
								<td><input class="form-check-input" type="checkbox" name="checkedGno" value="${GoodsVO.gno }"></td>
								<td>${GoodsVO.gno }</td>
								<td>${GoodsVO.goodsCode }</td>
								<td>${GoodsVO.goodsName }</td>
								<td>${GoodsVO.brandName }</td>
								<td>${GoodsVO.sellingPrice }</td>
							</tr>
						  </c:forEach>
                        </tbody>
                      </table>
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
    <!-- <script src="/zWeaRit/resources/assets/vendor/libs/jquery/jquery.js"></script> -->
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
