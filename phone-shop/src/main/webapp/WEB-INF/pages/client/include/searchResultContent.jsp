<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" href="Frontend/css/searchResult.css">


<script src="js/client/accounting.js"></script>
<script src="<c:url value='/js/client/search.js'/>"></script>
<link href="Frontend/css/style1.css" rel="stylesheet" type="text/css"
	media="all" />
</head>

<script type="text/javascript">	  
	$(document).ready(function() { 
		 $(".grid_1_of_4 .changeToVND").each(function() {
			  var value = accounting.formatMoney($(this).text())+ ' VND';
			  $(this).html(value);
			});
		
		 
	  });
	</script>




<body>
	<section class="section" id="section_1349002936">
		<div class="bg section-bg fill bg-fill  bg-loaded"></div>

		<div class="section-content relative">

			<div class="row" id="row-2082886737">

				<div id="col-1880555698"
					class="col div-no-padding small-12 large-12">
					<div class="col-inner">



						<div class="row" id="row-634888389">

							<div id="col-1034191091"
								class="col list-product div-no-padding small-12 large-12">
								<div class="col-inner">
									<div
										class="row large-columns-4 medium-columns-3 small-columns-2 row-small slider row-slider slider-nav-simple slider-nav-push ">
										<div class="wrap">
											<div class="col-md-10">
												<div class="content-grids">
													<h4>Kết quả tìm kiếm</h4>


													<div class="">
														<div class="sort_pro col-md-12" style="margin-left:-15px;">
															<form action="">
															
																<input type="hidden" name="name" value="${name}">
																<input type="hidden" name="range" value="${range}">
																<input type="hidden" name="brand" value="${brand}">
																<input type="hidden" name="manufactor"
																	value="${manufactor}">
																	<div class="flex-col medium-text-center col-md-2" >
													                  
													                        <select name="sort" class="orderby"  >
													                        		<option value="" selected="selected">Lựa chọn</option>
													                            	<option  value="newest" >Mới nhất</option>
													                                <option  value="priceAsc">Giá tăng dần</option>
													                                <option value="priceDes">Giá giảm dần</option>
													                        </select>
													                     </div>    
																			<div class="col-3">
																				<input class="search-submit" type="submit"
																					value="Sắp xếp">
																			</div>
																
													                
													                   
													                    
													              
																
																
															</form>
														</div>
													</div>


													<c:if test="${list.size() == 0}">
														<div class="section group">
															<h4>Không tìm thấy kết quả nào</h4>
														</div>
													</c:if>
													<c:forEach var="sanpham" items="${list}" varStatus="loop">
														<c:if test="${loop.index != list.size()-1}">
															<c:if test="${loop.index%4 == 0}">
																<div class="section group" style="padding-left:0px;">
																
																
																
																
																
																	<div class="col">
																	<div class="grid_1_of_4 images_1_of_4 products-info col-inner"
																		style="width: 232px !important; height: 350px !important;">
																		<a href="sp?id=${sanpham.id}" > 
																		<img style="width: 225px; height: 230px"
																			src="/phoneshop/img/${sanpham.id}.png">
																			<h3 style="font-weight: 700;font-size: 14px;color: #616161;">${sanpham.tenSanPham}</h3></a>
																		<h3 class="changeToVND">${sanpham.donGia}</h3>
																		
																		<h3></h3>
																		</div>
																	</div>
															</c:if>

															<c:if test="${loop.index%4 != 0}">
																<c:if test="${loop.index%4 == 3}">
																	<div class="col">
																	<div class="grid_1_of_4 images_1_of_4 products-info col-inner"
																		style="width: 232px !important; height: 350px !important;">
																		<a href="sp?id=${sanpham.id}"> <img
																			style="width: 225px; height: 230px"
																			src="/phoneshop/img/${sanpham.id}.png">
																			<h3 style="font-weight: 700;font-size: 14px;color: #616161;">${sanpham.tenSanPham}</h3></a>
																		<h3 class="changeToVND">${sanpham.donGia}</h3>
																		
																		<h3></h3>
																	</div>
																	</div>
												</div>
												</c:if>

												<c:if test="${loop.index%4 != 3}">
												<div class="col">
													<div class="grid_1_of_4 images_1_of_4 products-info col-inner"
														style="width: 232px !important; height: 350px !important;">
														<a href="sp?id=${sanpham.id}"> <img
															style="width: 225px; height: 230px"
															src="/phoneshop/img/${sanpham.id}.png">
															<h3 style="font-weight: 700;font-size: 14px;color: #616161;">${sanpham.tenSanPham}</h3></a>
														<h3 class="changeToVND">${sanpham.donGia}</h3>
														
														<h3></h3>
													</div>
													</div>
												</c:if>
												</c:if>
												</c:if>
												<c:if test="${loop.index == list.size()-1}">
													<c:if test="${loop.index%4 == 0}">
														<div class="section group" >
														<div class="col">
															<div class="grid_1_of_4 images_1_of_4 products-info col-inner"
																style="width: 232px !important; height: 350px !important;">
																<a href="sp?id=${sanpham.id}"> <img
																	style="width: 225px; height: 230px"
																	src="/phoneshop/img/${sanpham.id}.png">
																	<h3 style="font-weight: 700;font-size: 14px;color: #616161;">${sanpham.tenSanPham}</h3></a>
																<h3 class="changeToVND">${sanpham.donGia}</h3>
																
																<h3></h3>
															</div>
															</div>
														</div>
													</c:if>
													<c:if test="${loop.index%4 != 0}">
													<div class="col" style="padding-right: 516px;">
														<div class="grid_1_of_4 images_1_of_4 col-inner"
															style="width: 232px !important; height: 350px !important;">
															<a href="sp?id=${sanpham.id}"> <img
																style="width: 225px; height: 230px"
																src="/phoneshop/img/${sanpham.id}.png">
																<h3 style="font-weight: 700;font-size: 14px;color: #616161;">${sanpham.tenSanPham}</h3></a>
															<h3 class="changeToVND">${sanpham.donGia}</h3>
															
															<h3></h3>
														</div>
														</div>
											</div>
											</c:if>
											</c:if>
											</c:forEach>
											


										</div>


									</div>
									<div class="col-md-2" style="padding-top:30px">
										<h4>Lọc sản phẩm</h4>
										<form>
											<input type="hidden" name="name" value="${name}">
											<p>Mức giá</p>
											<div class="select-range">
												<select name="range" class="form-control">
													<option value="">Tất cả giá</option>
													<option value="duoi-2-trieu">Dưới 2 triệu</option>
													<option value="2-trieu-den-4-trieu">2 triệu đến 4
														triệu</option>
													<option value="4-trieu-den-6-trieu">4 triệu - 6
														triệu</option>
													<option value="6-trieu-den-10-trieu">6 triệu - 10
														triệu</option>
													<option value="tren-10-trieu">Trên 10 triệu</option>
												</select>
											</div>
											<p>Danh mục</p>
											<div class="select-range">
												<select name="brand" class="form-control">
													<option value="">Tất cả danh mục</option>
													<c:forEach var="brand" items="${danhmuc}" varStatus="loop">
														<option value="${brand}">${brand}</option>
													</c:forEach>
												</select>
											</div>
											<p>Hãng sản xuất</p>
											<div class="select-range">
												<select name="manufactor" class="form-control">
													<option value="">Tất cả nhà sản xuất</option>
													<c:forEach var="manufactor" items="${hangsx}"
														varStatus="loop">
														<option value="${manufactor}">${manufactor}</option>
													</c:forEach>
												</select>
											</div>
											<input class="search-submit" type="submit"
												value="Lọc sản phẩm">
										</form>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-10">

						<c:if test="${list.size() != 0}">
												<div class="paging " >
													<c:if test="${currentPage != 1}">
														<a
															href="/phoneshop/search?name=${name}&page=${currentPage-1}&sort=${sort}&range=${range}&brand=${brand}&manufactor=${manufactor}">Back</a>
													</c:if>
													<c:if test="${currentPage == 1}">
														<a class="current">1</a>
													</c:if>
													<c:if test="${currentPage != 1}">
														<a
															href="/phoneshop/search?name=${name}&page=1&sort=${sort}&range=${range}&brand=${brand}&manufactor=${manufactor}">1</a>
													</c:if>

													<c:forEach var="pag" items="${pageList}" varStatus="loop">
														<c:if test="${currentPage == pag}">
															<a class="current">${pag}</a>
														</c:if>
														<c:if test="${currentPage != pag}">
															<a
																href="/phoneshop/search?name=${name}&page=${pag}&sort=${sort}&range=${range}&brand=${brand}&manufactor=${manufactor}">${pag}</a>
														</c:if>
													</c:forEach>

													<c:if test="${currentPage != totalPage}">
														<a
															href="/phoneshop/search?name=${name}&page=${currentPage+1}&sort=${sort}&range=${range}&brand=${brand}&manufactor=${manufactor}">Next</a>
													</c:if>


												</div>
											</c:if>
											</div>
				</div>
			</div>
		</div>



	</section>
	<div class="clear"></div>
</body>
</html>