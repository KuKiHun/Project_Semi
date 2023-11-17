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

    <title>weaRit 관리자모드 - 상품등록</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/zWeaRit/resources/assets/img/favicon/favicon.ico" />

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
   <form action="goodsRegister.do" method="POST" enctype="multipart/form-data">
    <%@ include file="/WEB-INF/views/fix/header.jsp" %>

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">상품 관리/</span> 상품 등록</h4>

              <!-- Basic Layout & Basic with Icons -->
              <div class="row">
                <!-- Basic Layout -->
                <div class="col-xxl">
                  <div class="card mb-4">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="mb-0">기본 정보</h5>
                    </div>
                    <div class="card-body">
                    	<div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="goodsCode">상품코드</label>
                          <div class="col-sm-10">
                            <input
                              type="text"
                              class="form-control"
                              id="goodsCode"
                              name="goodsCode"
                              placeholder='"-" 없이 입력'
                              style="width:300px">
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="goodsName">상품명</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="goodsName" name="goodsName" />
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="brandName">브랜드명</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="brandName" name="brandName" />
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="goodsStock">재고</label>
                          <div class="col-sm-10">
                            <input type="text" id="goodsStock" name="goodsStock" class="form-control" style="width:150px" />
                          </div>
                        </div>
                       
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="goodsDescription">상품설명</label>
                          <div class="col-sm-10">
                            <textArea id="goodsDescription" name="goodsDescription" class="form-control" style="height:150px" ></textArea>
                          </div>
                        </div>
                       </div>
                        <hr/>
                        <div class="card-body">
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="tags">검색어 설정</label>
                          <div class="col-sm-10">
                            <textArea id="tags" name="tags" class="form-control" style="height:150px"></textArea>
                            <div class="form-text">* ","로 구분, 최대 10개까지 입력 가능</div>
                          </div>
                        </div>
                        </div>
                        </div>
                        
                <div class="col-xxl">
                  <div class="card mb-4">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="mb-0">판매 정보</h5>
                    </div>
                    <div class="card-body">
                      <div class="row mb-3" style="white-space:nowrap; overflow-x:hidden">
                        <div class="col-sm-10">
                          <table border="1" id="sellingInfo">
                            <tr>
                              <td align="center" style="padding:30px 30px 0px 30px">
                                <h5>원가</h5>
                              </td>
                              <td align="center" style="padding:30px 30px 0px 30px">
                                <h5>과세율</h5>
                              </td>
                              <td align="center" style="padding:30px 30px 0px 30px">
                                <h5>마진율</h5>
                              </td>
                              <td align="center" style="padding:30px 30px 0px 30px">
                                <h5>추가금액</h5>
                              </td>
                            </tr>
                            <tr>
                              <td style="padding:0px 30px 30px 30px">
                                <div class="input-group input-group-merge">
                                <input id="costPrice" name="costPrice" type="text" class="form-control" style="width:150px">
                                <span class="input-group-text">원</span>
                                </div>
                              </td>
                              <td style="padding:0px 30px 30px 30px">
                                <div class="input-group input-group-merge">
                                <input id="taxPct" name="taxPct" type="text" class="form-control" style="width:100px">
                                <span class="input-group-text">%</span>
                                </div>
                              </td>
                              <td style="padding:0px 30px 30px 30px">
                                <div class="input-group input-group-merge">
                                <input id="marginPct" name="marginPct" type="text" class="form-control" style="width:100px">
                                <span class="input-group-text">%</span>
                                </div>
                              </td>
                              <td style="padding:0px 30px 30px 30px">
                                <div class="input-group input-group-merge">
                                <input id="marginPrice" name="marginPrice" type="text" class="form-control" style="width:150px">
                                <span class="input-group-text">원</span>
                                </div>
                              </td>
                            </tr>
                            </table>
                            <table id="btnCalTb">
                    	      <tr>
                                <td align="right" style="padding:15px 15px 15px 792px;">
                                  <button type="button" id="calculate" class="btn btn-info">판매가 계산</button>
                                </td>
                              </tr>
                              <tr>
                                <td align="center" style="padding:30px 30px 0px 30px">
                                  <h5>판매가</h5>
                                </td>
                              </tr>
                              <tr>
                                <td style="padding:0px 30px 30px 30px">
                                  <div class="input-group input-group-merge">
                                  <input id="sellingPrice" name="sellingPrice" type="text" class="form-control" style="width:500px">
                                  <span class="input-group-text">원</span>
                                  </div>
                                </td>
                              </tr>
                            </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                    	
                <div class="col-xxl">
                  <div class="card mb-4">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="mb-0">이미지 설정</h5>
                    </div>
                    <div class="card-body">
                      <div class="row mb-3 pb-8">
                        <div class="product-title">
					  	  <div class="product-img-div">
					  		<img class="product-img" src="">
					  	  </div>
						</div>
						<span class="form-text">* jpeg, png 형식만 가능합니다.</span>
						<hr style="visibility:hidden;"/>
						<input type="file" id="goodsImgThumb" name="imgFile" accept="image/png, image/jpeg">
                      </div>
                    </div>
                    <hr/>
                      <table>
                    	<tr>
                          <td align="right" style="padding:0px 15px 15px 0px;">
                            <button type="reset" class="btn btn-secondary">초기화</button>
                            <button type="submit" class="btn btn-primary">상품 등록</button>
                          </td>
                        </tr>
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
    
    <!-- JQuery -->
    <script src="/zWeaRit/resources/js/admin/adminGoods.js"></script>
    
    
    </form>
  </body>
</html>
