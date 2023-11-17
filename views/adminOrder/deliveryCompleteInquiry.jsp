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

    <title>weaRit 관리자모드 - 배송완료조회</title>

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
    <form>
    <%@ include file="/WEB-INF/views/fix/header.jsp" %>

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">주문 관리/</span> 배송 완료 조회</h4>

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
                          <label class="col-sm-2 col-form-label" for="basic-default-name">구분</label>
                          <div class="col-sm-10" id="type-btn">
                          	<input type="hidden" name="orderedType" id="orderedType"/>
                            <button type="button" class="btn btn-secondary active">전체</button>
                            <button type="button" class="btn btn-secondary"
                            		onclick="document.getElementById('orderedType').value='구매'">구매</button>
                            <button type="button" class="btn btn-secondary"
                            		onclick="document.getElementById('orderedType').value='대여'">대여</button>
                          </div>
                        </div>
                        <hr/>
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-company">기간</label>
                          <div class="col-sm-10">
                          	<select id="periodCondition" name="periodCondition" class="form-select" style="width:200px">
                          	  <option value="ordered_date">주문일</option>
                          	  <option value="pay_date">결제일</option>
                          	</select>
                          </div>
                          <div>&nbsp;</div>
                          <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-name"></label>
                            <div class="col-sm-10" id="period-btn">
                              &nbsp;
                              <input type="hidden" name="orderPeriod" id="orderPeriod" />
                              <button type="button" class="btn btn-secondary"
                              		  onclick="document.getElementById('orderPeriod').value='오늘'">오늘</button>
                              <button type="button" class="btn btn-secondary"
                              		  onclick="document.getElementById('orderPeriod').value='1주일'">1주일</button>
                              <button type="button" class="btn btn-secondary"
                              		  onclick="document.getElementById('orderPeriod').value='1개월'">1개월</button>
                              <button type="button" class="btn btn-secondary"
                              		  onclick="document.getElementById('orderPeriod').value='3개월'">3개월</button>
                              <button type="button" class="btn btn-secondary"
                              		  onclick="document.getElementById('orderPeriod').value='6개월'">6개월</button>
                              <button type="button" class="btn btn-secondary"
                              		  onclick="document.getElementById('orderPeriod').value='1년'">1년</button>
                              <button type="button" class="btn btn-secondary active">전체</button>
                            </div>
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-name"></label>
                          <div class="col-sm-10">
                          <table>
                          <tr>
                          <td>
                            <div class="input-group input-group-merge">
                              <input type="text" class="form-control" placeholder="시작일" aria-describedby="start_date" style="width:200px">
                              <span id="start_date" class="input-group-text">📅</span>
                            </div>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;</td>
                            <td>
                            <div class="input-group input-group-merge">
                              <input type="text" class="form-control" placeholder="종료일" aria-describedby="end_date" style="width:200px">
                              <span id="end_date" class="input-group-text">📅</span>
                            </div>
                            </td>
                            </tr>
                          </table>
                          </div>
                        </div>
                        <hr/>
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-email">검색어</label>
                          <div class="col-sm-10">
                          	<select id="searchCondition" name="searchCondition" class="form-select" style="width:200px">
                          	  <option value="ono">주문번호</option>
                          	  <option value="member_name">주문자</option>
                          	</select>
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-email"></label>
                          <div class="col-sm-10">
                            <input type="text" id="inputKeyword" name="inputKeyword" class="form-control" placeholder="검색어를 입력하세요."/>
                          </div>
                        </div>
                      </div>
                      <hr/>
                      <table>
                        <tr>
                    	  <td align="right" style="padding:0px 15px 15px 0px;">
                            <button type="reset" class="btn btn-secondary">초기화</button>
                            <button type="submit" class="btn btn-primary"
                            		onclick="javascript: form.action='deliveryCompleteInquiry';">검색</button>
                          </td>
                        </tr>
                      </table>
                    </div>
                      
                  <div class="card mb-4">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="mb-0">상품 목록</h5>
                    </div>
                    <div class="card-body" style="overflow-x:auto; overflow-y:auto;">
                      <table class="table table-bordered table_set" id="listTable">
                        <thead>
                          <tr>
                            <th>선택</th>
                            <th>주문일 / 주문번호</th>
                            <th>주문자</th>
                            <th>배송일</th>
                            <th>배송번호</th>
                            <th>송장번호(송장번호입력일)</th>
                            <th>택배사</th>
                            <th>상품명/옵션</th>
                            <th>수량</th>
                            <th>메모</th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${getDeliveryCompleteList }" var="list">
                          <tr>
                        	<td><input class="form-check-input" type="checkbox"></td>
                        	<td>${list.orderedDate } / ${list.ono }</td>
                        	<td>${list.memberName }</td>
                        	<td>${list.deliveryEndDate }</td>
                        	<td>${list.dno }</td>
                        	<td>${list.trackingNum } (${list.trackingNumDate })</td>
                        	<td>${list.supplier }</td>
                        	<td>${list.ordered_name }</td>
                        	<td>${list.ordered_amount }</td>
                        	<td>${list.note }</td>
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
