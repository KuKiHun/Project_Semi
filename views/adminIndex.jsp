<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<% request.setCharacterEncoding("utf-8"); %>

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
  data-assets-path="resources/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>weaRit 관리자모드</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="resources/assets/img/logo/wearitLogo_crop_small.png" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="resources/assets/vendor/fonts/boxicons.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

    <!-- Core CSS -->
    <link rel="stylesheet" href="resources/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="resources/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="resources/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="resources/assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="resources/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="resources/assets/js/config.js"></script>
    
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
    
    
    
  </head>

  <body>
    <%@ include file="fix/header.jsp" %>

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
            
            <!-- 주문 / 배송 -->
            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="row">
                <div class="col-md-6 col-lg-6 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">주문 / 배송</h5>
                        <small class="text-muted">결제 관리</small>
                      </div>
                      <!-- <div class="dropdown">
                        <button
                          class="btn p-0"
                          type="button"
                          id="orederStatistics"
                          data-bs-toggle="dropdown"
                          aria-haspopup="true"
                          aria-expanded="false"
                        >
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="j
                          avascript:void(0);">Refresh</a>
                        </div>
                      </div> -->
                    </div>
                    <div class="card-body">
                      <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="d-flex flex-column align-items-left gap-1">
                          <span>전체 주문</span>
                          <h3 class="mb-2" id="totalOrder">${adminIndexOrdered.totalOrder } 건</h3>
                        </div>
                        <div id="orderStatisticsChart"></div>
                      </div>
                      <ul class="p-0 m-0">
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-primary">
                              <i class="bi bi-credit-card"></i>
                            </span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">신규 주문</h6>
<!--                               <small class="text-muted">Mobile, Earbuds, TV</small> -->
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold" id="newOrder"><a href="adminOrder/newOrderManage">${adminIndexOrdered.newOrder }</a> 건</small>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-success">
                              <i class="bi bi-box-seam"></i>
                            </span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">배송 준비</h6>
<!--                               <small class="text-muted">T-shirt, Jeans, Shoes</small> -->
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold" id="deliveryReady"><a href="adminOrder/deliveryReadyManage">${adminIndexOrdered.deliveryReady }</a> 건</small>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-info">
                              <i class="bi bi-truck"></i>
                            </span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">배송 중</h6>
<!--                               <small class="text-muted">Fine Art, Dining</small> -->
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold" id="deliveryIng"><a href="adminOrder/deliveryIngManage">${adminIndexOrdered.deliveryIng }</a> 건</small>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-secondary">
                              <i class="bi bi-check-lg"></i>
							</span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">배송 완료</h6>
                              <!-- <small class="text-muted">Football, Cricket Kit</small> -->
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold" id="deliveryComplete"><a href="adminOrder/deliveryCompleteInquiry">${adminIndexOrdered.deliveryComplete }</a> 건</small>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!--/ 주문 / 배송 -->
                
                <!-- 클레임 -->    
				 <div class="col-md-6 col-lg-6 order-1 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">주문 / 배송</h5>
                        <small class="text-muted">클레임 / 정산</small>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="d-flex flex-column align-items-left gap-1">
                          <span>전체 클레임</span>
                          <h3 class="mb-2" id="totalClaim">${adminIndexClaim.totalClaim } 건</h3>
                        </div>
                        <div id="claimStatisticsChart"></div>
                      </div>
                      <ul class="p-0 m-0">
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-secondary">
                              <i class="bi bi-x-lg"></i>
                            </span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">취소 요청</h6>
<!--                               <small class="text-muted">Mobile, Earbuds, TV</small> -->
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold" id="cancelClaim"><a href="adminOrder/claimManage">${adminIndexClaim.cancelClaim }</a> 건</small>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-danger">
                              <i class="bi bi-box-seam"></i>
                            </span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">반품 요청</h6>
<!--                               <small class="text-muted">T-shirt, Jeans, Shoes</small> -->
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold" id="returnClaim"><a href="adminOrder/claimManage">${adminIndexClaim.returnClaim }</a> 건</small>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-info">
                              <i class="bi bi-check-lg"></i>
                            </span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">반품 수거 완료</h6>
<!--                               <small class="text-muted">Fine Art, Dining</small> -->
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold" id="returnPickup"><a href="adminOrder/claimManage">${adminIndexClaim.returnPickup }</a> 건</small>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-warning">
                              <i class="bi bi-arrow-repeat"></i>
							</span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">교환 요청</h6>
                              <!-- <small class="text-muted">Football, Cricket Kit</small> -->
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold" id="exchangeClaim"><a href="adminOrder/claimManage">${adminIndexClaim.exchangeClaim }</a> 건</small>
                            </div>
                          </div>
                         </li>
                         <li class="d-flex mb-4 pb-1">
                           <div class="avatar flex-shrink-0 me-3">
                             <span class="avatar-initial rounded bg-label-success">
                               <i class="bi bi-check-lg"></i>
							 </span>
                           </div>
                           <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                             <div class="me-2">
                               <h6 class="mb-0">교환 수거 완료</h6>
                              </div>
                              <div class="user-progress">
                                <small class="fw-semibold" id="exchangePickup"><a href="adminOrder/claimManage">${adminIndexClaim.exchangePickup }</a> 건</small>
                              </div>
                            </div>
                          </li>
                          <li class="d-flex">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-primary">
                              <i class="bi bi-cash-coin"></i>
							</span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">구매 확정</h6>
                              <!-- <small class="text-muted">Football, Cricket Kit</small> -->
                            </div>
                            <div class="user-progress">
                              <small class="fw-semibold" id="purchaseConfirm"><a href="adminOrder/deliveryCompleteInquiry">${adminIndexClaim.purchaseConfirm }</a> 건</small>
                            </div>
                          </div>
                         </li>
                      </ul>
                    </div>
                  </div>
                </div>
                </div>
              <!--/ 클레임 / 정산 -->
              
			  <!-- 쇼핑몰 매출 통계 -->
              <div class="col-12 col-lg-12 order-2 order-md-3 order-lg-6 mb-4 ">
                  <div class="card">
                    <div class="row row-bordered">
                      <div class="col-md-12">
                        <h5 class="card-header m-0 me-2 pb-3">쇼핑몰 매출 통계</h5>
                        <!-- <div id="totalRevenueChart" class="px-2"></div> -->
                        <div class="card-body">
                          <div class="graphBox">
                            <canvas id="salesStatisticsChart" style="height:100px;" class="px-2"></canvas>
                          </div>
                        </div>
					  </div>
                    </div>
                  </div>
                </div>
                <!--/ 쇼핑몰 매출 통계 -->
                
                <!-- 쇼핑몰 현황 -->
                <!-- 차트 띄울 값 저장 --> 
                <input type="hidden" id="hidNewOrder" name="hidNewOrder" value="${adminIndexOrdered.newOrder }">
                <input type="hidden" id="hidNewMember" name="hidNewMember" value="${adminIndexMember.newMember }">
                <input type="hidden" id="hidNewPost" name="hidNewPost" value="${adminIndexPostCnt.newPost }">
                
                <div class="col-12 col-lg-12 order-2 order-md-3 order-lg-6 mb-4 ">
                  <div class="card">
                    <div class="row row-bordered g-0">
                      <div class="col-md-4">
                        <h5 class="card-header m-0 me-2 pb-3">쇼핑몰 현황</h5>
                        <div class="card-body">
                          <table class="table table-hover">
                          	<tr>
                          	  <td>주문 처리 현황</td>
                          	  <td align="right">${adminIndexOrdered.newOrder } 건</td>
                          	<tr/>
                          	<tr>
                          	  <td>회원 현황</td>
                          	  <td align="right">${adminIndexMember.newMember } 건</td>
                          	<tr/>
                          	<tr>
                          	  <td>게시물 현황</td>
                          	  <td align="right">${adminIndexPostCnt.newPost } 건</td>
                          	<tr/>
                          	
						  </table>
                        </div>
					  </div>
					  <div class="col-md-8">
					  	<div class="card-body">
					  	  <div class="graphBox">
                            <canvas id="shopStatisticsChart" style="height:150px; width:450px" class="px-2"></canvas>
                          </div>
                        </div>
					  </div>
                      </div>
                    </div>
                  </div>
                <!--/ 쇼핑몰 현황 -->
                
                <!-- 문의 -->
                <div class="row">
                  <div class="col-md-6 col-lg-6 order-0 mb-4">
                    <div class="card h-100">
                      <div class="card-header d-flex align-items-center justify-content-between">
                        <h5 class="card-title m-0 me-2">문의</h5>
                      </div>
                      <div class="card-body">
                        <ul class="p-0 m-0">
                         <c:forEach items="${adminIndexPostInquiry }" var="inquiry">
                          <li class="d-flex mb-4 pb-1">
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                              <div class="me-2">
                                <h6 class="mb-0"><a href="">${inquiry.postTitle }</a></h6>
                              </div>
                              <div class="user-progress d-flex align-items-center gap-1">
                                <h6 class="mb-0">${inquiry.postDate }</h6>
                              </div>
                            </div>
                          </li>
                         </c:forEach>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <!--/ 문의 -->
                
                <!-- 커뮤니티 -->
                <div class="col-md-6 col-lg-6 order-1 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-4">
                      <h5 class="card-title m-0 me-2">커뮤니티</h5>
                    </div>
                    <div class="card-body">
                      <ul class="p-0 m-0">
                       <c:forEach items="${adminIndexPostComm }" var="comm">
                        <li class="d-flex mb-4 pb-1">
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                              <div class="me-2">
                                <h6 class="mb-0"><a href="">${comm.postTitle }</a></h6>
                              </div>
                              <div class="user-progress d-flex align-items-center gap-1">
                                <h6 class="mb-0">${comm.postDate }</h6>
                              </div>
                            </div>
                          </li>
                         </c:forEach>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!--/ 커뮤니티 -->
              
              <!-- 리뷰 -->
                <div class="col-12 col-lg-12 order-2 order-md-3 order-lg-6 mb-4 ">
                  <div class="card">
                    <div class="row row-bordered g-0">
                      <div class="col-md-6">
                        <h5 class="card-header m-0 me-2 pb-3">리뷰</h5>
                        <div class="card-body">
                          <ul class="p-0 m-0">
                          <c:forEach items="${adminIndexPostReview }" var="review">
                          <li class="d-flex mb-4 pb-1">
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                              <div class="me-2">
                                <h6 class="mb-0"><a href="">${review.postTitle }</a></h6>
                              </div>
                              <div class="me-2">
                                <h6 class="mb-0">${review.postDate }</h6>
                              </div>
                            </div>
                          </li>
                          </c:forEach>
                        </ul>
                        </div>
					  </div>
					  <div class="col-md-6">
					  	<div class="card-body">
					  	  <div class="chart-wrap">
                            <canvas id="reviewRatingsChart" style="height:100px; width:200px" class="px-2"></canvas>
                          </div>
                          <hr/>
                          <ul class="p-0 m-0">
                          <li class="d-flex mb-4 pb-1">
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                              <div class="me-2">
                                <h6 class="mb-0"><a href="">기대보단 별로였어요</a></h6>
                              </div>
                              <div class="user-progress d-flex align-items-center gap-1">
                                <h6 class="mb-0">2023-11-12</h6>
                              </div>
                            </div>
                          </li>
                          <li class="d-flex mb-4 pb-1">
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                              <div class="me-2">
                                <h6 class="mb-0"><a href="">하자가 있는데요</a></h6>
                              </div>
                              <div class="user-progress d-flex align-items-center gap-1">
                                <h6 class="mb-0">2023-11-10</h6>
                              </div>
                            </div>
                          </li>
                          <li class="d-flex mb-4 pb-1">
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                              <div class="me-2">
                                <h6 class="mb-0"><a href="">그닥</a></h6>
                              </div>
                              <div class="user-progress d-flex align-items-center gap-1">
                                <h6 class="mb-0">2023-11-07</h6>
                              </div>
                            </div>
                          </li>
                          </ul>
                        </div>
					  </div>
                      </div>
                  </div>
                <!--/ 리뷰 -->
 
            <!-- / Content -->

            <%@ include file="fix/footer.jsp" %>

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
<!--       <div class="layout-overlay layout-menu-toggle"></div>
    </div> -->
    <!-- / Layout wrapper -->
<!-- 
    <div class="buy-now">
      <a
        href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/"
        target="_blank"
        class="btn btn-danger btn-buy-now"
        >Upgrade to Pro</a
      >
    </div> -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="resources/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="resources/assets/vendor/libs/popper/popper.js"></script>
    <script src="resources/assets/vendor/js/bootstrap.js"></script>
    <script src="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="resources/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="resources/assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="resources/assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="resources/assets/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.js" integrity="sha512-Lii3WMtgA0C0qmmkdCpsG0Gjr6M0ajRyQRQSbTF6BsrVh/nhZdHpVZ76iMIPvQwz1eoXC3DmAg9K51qT5/dEVg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
  </body>
</html>
