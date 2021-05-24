<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ page import="com.websitedungcuthethao.util.SecurityUtils" %>
<!-- Header -->
<header class="header shop">
	<!-- Topbar -->
	<div class="topbar">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-12 col-12">
					<!-- Top Left -->
					<div class="top-left">
						<ul class="list-main">
							<li><i class="ti-headphone-alt"></i> +060 (800) 801-582</li>

						</ul>
					</div>
					<!--/ End Top Left -->
				</div>
				<div class="col-lg-8 col-md-12 col-12">
					<!-- Top Right -->
					<div class="right-content">
						<ul class="list-main">
						
							<security:authorize access="isAnonymous()">
								<li><i class="ti-power-off"></i><a href=" <c:url value="/dang-nhap"/> ">Đăng nhập</a></li>
								<li><i class="ti-arrow-right"></i> <a href="<c:url value="/dangky"/> ">Đăng ký</a></li>
							</security:authorize>
							
							<security:authorize access="isAuthenticated()">
								<li><i class="ti-power-off"></i><a href=" <c:url value="/dang-nhap"/> ">Welcome <%=SecurityUtils.getPrincipal().getFullName() %></a></li>
								<li><i class="ti-arrow-right"></i> <a href="<c:url value="/dang-xuat"/> ">Thoát</a></li>
							</security:authorize>
							
						</ul>
					</div>
					<!-- End Top Right -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Topbar -->
	<div class="middle-inner">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-2 col-12">
					<!-- Logo -->
					<div class="logo">
						<a href="<c:url value="/"/>"><img
							src="<c:url value="/resources/user/images/logo.png"/>" alt="logo"></a>
					</div>
					<!--/ End Logo -->
					<!-- Search Form -->
					<div class="search-top">
						<div class="top-search">
							<a href="#0"><i class="ti-search"></i></a>
						</div>
						<!-- Search Form -->
						<div class="search-top">
							<form class="search-form">
								<input type="text" placeholder="c" name="search">
								<button value="search" type="submit">
									<i class="ti-search"></i>
								</button>
							</form>
						</div>
						<!--/ End Search Form -->
					</div>
					<!--/ End Search Form -->
					<div class="mobile-nav"></div>
				</div>
				<div class="col-lg-8 col-md-7 col-12">
					<div class="search-bar-top">
						<div class="search-bar">
							<!-- <select>
									<option selected="selected">All Category</option>
									<option>watch</option>
									<option>mobile</option>
									<option>kid’s item</option>
								</select> -->
							<form">
								<input name="search" placeholder="Tìm kiếm tại đây..."
									type="search">
								<button class="btnn">
									<i class="ti-search"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-12">
					<div class="right-bar">
						<!-- Search Form -->

						<div class="sinlge-bar">
							<a href="#" class="single-icon"><i
								class="fa fa-user-circle-o" aria-hidden="true"></i></a>
						</div>
						<div class="sinlge-bar shopping">
							
							<c:choose>
								<c:when test="${gioHang.size() > 0}">
									<a href=" <c:url value="/gio-hang"/> " class="single-icon"><i
										class="ti-bag"></i> <span class="total-count">${gioHang.size()}</span></a>
								</c:when>
								<c:otherwise>
									<a href=" <c:url value="/gio-hang"/> " class="single-icon"><i
										class="ti-bag"></i> <span class="total-count">0</span></a>
								</c:otherwise>
							</c:choose>
							<!-- Shopping Item -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Header Inner -->
	<div class="header-inner">
		<div class="container">
			<div class="cat-nav-head">
				<div class="row">
					<div class="col-lg-3">
						<div class="all-category">
							<h3 class="cat-heading">
								<i class="fa fa-bars" aria-hidden="true"></i>DANH MỤC
							</h3>
							<ul class="main-category">
								<c:forEach items="${dsDanhMuc}" var="item">
									<li><a href="#">${item.key.ten} <i
											class="fa fa-angle-right" aria-hidden="true"></i></a>

										<ul class="sub-category">
											<c:forEach items="${item.value}" var="subItem">
												<li><a href="#">${subItem.ten}</a></li>
											</c:forEach>
										</ul></li>
								</c:forEach>

							</ul>
						</div>
					</div>
					<div class="col-lg-9 col-12">
						<div class="menu-area">
							<!-- Main Menu -->
							<nav class="navbar navbar-expand-lg">
								<div class="navbar-collapse">
									<div class="nav-inner">
										<ul class="nav main-menu menu navbar-nav">
											<li class="active"><a href="<c:url value="/"/>">Trang
													chủ</a></li>
											<li><a href=" <c:url value="/danh-sach-san-pham?page=1&limit=3"/> ">Sản
													phẩm</a></li>
											<li><a href="#">Service</a></li>
											<li><a href="#">Shop<i class="ti-angle-down"></i><span
													class="new">New</span></a>
												<ul class="dropdown">
													<li><a href="shop-grid.html">Shop Grid</a></li>
													<li><a href="cart.html">Cart</a></li>
													<li><a href="checkout.html">Checkout</a></li>
												</ul></li>
											<li><a href="contact.html">Liên hệ</a></li>
										</ul>
									</div>
								</div>
							</nav>
							<!--/ End Main Menu -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ End Header Inner -->

</header>
<!--/ End Header -->