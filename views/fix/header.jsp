<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String pjName = "/zWeaRit"; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/zWeaRit/resources/js/admin/adminMain.js" type="text/javascript" ></script>
</head>
<body>

<!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="index.html" class="app-brand-link">
              <img alt="" src="/zWeaRit/resources/assets/img/logo/wearitLogo_crop_small.png" style="margin-top:4px;">
              <span class="app-brand-text demo menu-text fw-bolder ms-2">weaRit</span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- 상점관리 -->
            <li id="weaRitCat" class="menu-item active">
              <a href="<%=pjName%>/adminIndex" class="menu-link">
                <i class="menu-icon tf-icons bi bi-house-door"></i>
                <div data-i18n="adminIndex">상점관리</div>
              </a>
            </li>
            <!--/ 상점관리 -->

            <!-- 상품관리 -->
            <li id="weaRitCat" class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bi bi-inbox"></i>
                <div data-i18n="Layouts">상품관리</div>
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="<%=pjName%>/adminGoods/goodsInquiry" class="menu-link">
                    <div data-i18n="goodsInquiry">상품조회</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminGoods/goodsRegister" class="menu-link">
                    <div data-i18n="goodsRegister">상품등록</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminGoods/goodsManage" class="menu-link">
                    <div data-i18n="goodsManage">상품관리</div>
                  </a>
                </li>
              </ul>
            </li>
            <!--/ 상품관리 -->
            
            <!-- 주문관리 -->
            <li id="weaRitCat" class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bi bi-cart4"></i>
                <div data-i18n="Layouts">주문관리</div>
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="<%=pjName%>/adminOrder/totalOrderInquiry" class="menu-link">
                    <div data-i18n="totalOrderInquiry">전체주문조회</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminOrder/newOrderManage" class="menu-link">
                    <div data-i18n="newOrderManage">신규주문관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminOrder/deliveryPreManage" class="menu-link">
                    <div data-i18n="deliveryPreManage">발주관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminOrder/deliveryReadyManage" class="menu-link">
                    <div data-i18n="deliveryReadyManage">배송준비중관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminOrder/deliveryIngManage" class="menu-link">
                    <div data-i18n="deliveryIngManage">배송중관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminOrder/deliveryCompleteInquiry" class="menu-link">
                    <div data-i18n="deliveryCompleteInquiry">배송완료조회</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminOrder/claimManage" class="menu-link">
                    <div data-i18n="claimManage">클레임관리</div>
                  </a>
                </li>
              </ul>
            </li>
            <!--/ 주문관리 -->
            
            <!-- 고객관리 -->
            <li id="weaRitCat" class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bi bi-people"></i>
                <div data-i18n="Layouts">고객관리</div>
              </a>

              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="<%=pjName%>/adminMember/allMemberInquiry" class="menu-link">
                    <div data-i18n="allMemberInquiry">전체회원조회</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminMember/memberByLevelManage" class="menu-link">
                    <div data-i18n="memberByLevelManage">등급별회원관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminMember/withdrawedMemberManage" class="menu-link">
                    <div data-i18n="withdrawedMemberManage">탈퇴회원관리</div>
                  </a>
                </li>
              </ul>
            </li>
            <!--/ 고객관리 -->
            
            <!-- 게시판관리 -->
            <li id="weaRitCat" class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bi bi-clipboard"></i>
                <div data-i18n="Layouts">게시판관리</div>
              </a>

              <ul class="menu-sub">
                <li id="boardManageCat" class="menu-item">
                  <a href="<%=pjName%>/adminBoard/boardManage" class="menu-link">
                    <div data-i18n="Without menu">게시판관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<%=pjName%>/adminBoard/postManage" class="menu-link">
                    <div data-i18n="Without navbar">게시물관리</div>
                  </a>
                </li>
              </ul>
            </li>
            <!--/ 게시판관리 -->
            
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                  <i class="bx bx-search fs-4 lh-0"></i>
                  <input
                    type="text"
                    class="form-control border-0 shadow-none"
                    placeholder="검색"
                    aria-label="검색"
                  />
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->
<!--                 <li class="nav-item lh-1 me-3">
                  <a
                    class="github-button"
                    href="https://github.com/themeselection/sneat-html-admin-template-free"
                    data-icon="octicon-star"
                    data-size="large"
                    data-show-count="true"
                    aria-label="Star themeselection/sneat-html-admin-template-free on GitHub"
                    >Star</a
                  >
                </li> -->

                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="<%=pjName%>/resources/assets/img/avatars/0.png" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="<%=pjName%>/resources/assets/img/avatars/0.png" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block">관리자1</span>
                            <small class="text-muted">ADMIN</small>
                          </div>
                        </div>
                      </a>
                    </li>
<!--                     <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-cog me-2"></i>
                        <span class="align-middle">Settings</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                      </a>
                    </li> -->
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="adminLogout">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">로그아웃</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->

</body>
</html>