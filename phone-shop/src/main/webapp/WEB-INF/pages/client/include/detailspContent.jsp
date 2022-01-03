<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
	<link rel="stylesheet" href="Fronted1/css/style.css">
    <meta charset="UTF-8" />

    <link rel='stylesheet' id='flatsome-main-css' href='Fronted1/css/flatsome2916.css?ver=3.13.1' type='text/css' media='all' />
    <link rel='stylesheet' id='flatsome-shop-css' href='Fronted1/css/flatsome-shop2916.css?ver=3.13.1' type='text/css'
        media='all' />
    <link rel='stylesheet' id='flatsome-style-css' href='Fronted1/css/style6aec.css?ver=3.0' type='text/css' media='all' />
    <link rel='stylesheet' id='flatsome-googlefonts-css'
        href='http://fonts.googleapis.com/css?family=Roboto%3Aregular%2C700%2Cregular%2C500%7CDancing+Script%3Aregular%2C400&amp;display=swap&amp;ver=3.9'
        type='text/css' media='all' />
    <link rel='stylesheet' href='Fronted1/css/styleCustom.css' type='text/css' media='all' />
</head>
	<script type="text/javascript">	  
	$(document).ready(function() { 
	  	var priceConvert = accounting.formatMoney(${sp.getDonGia()})+' VND';
		document.getElementById("priceConvert").innerHTML= priceConvert;
		  
	  });
	</script>
<body>
	<div class="page-title" style="padding:20px">
            <div class="flex-row medium-flex-wrap container">
                <div class="flex-col flex-grow medium-text-center">
                    <div class="is-small">
                        <nav class="woocommerce-breadcrumb breadcrumbs uppercase" style="font-size:15px"><a href="/phoneshop/">Trang chủ</a>
                            <span class="divider">&#47;</span> <a href="/phoneshop/store?brand=${sp.danhMuc.getTenDanhMuc()}">${sp.danhMuc.getTenDanhMuc()}</a>
                            <span class="divider">&#47;</span> <a href="">${sp.getTenSanPham()}</a>
                        </nav>
                    </div>
                </div>

                <div class="flex-col medium-text-center">
                </div>
            </div>
        </div>    
	<main id="main" class="container">

            <div class="container">

                <div id="product-6932" class="product type-product post-6932 status-publish first instock product_cat-bo-my-pham-tri-nam-va-tan-nhang has-post-thumbnail sale shipping-taxable purchasable product-type-simple">
                    <div class="product-container">

                        <div class="">
                            <div class="row content-row mb-0">

                                <div class="product-gallery col large-5">

                                    <div class="product-images relative mb-half has-hover woocommerce-product-gallery woocommerce-product-gallery--with-images woocommerce-product-gallery--columns-4 images"
                                        data-columns="4">
                                        <div class="woocommerce-product-gallery__image slide first">
                                            <img width="510" height="510" src="/phoneshop/img/${sp.getId()}.png"
                                                class="lazy-load wp-post-image skip-lazy"
                                                sizes="(max-width: 510px) 100vw, 510px" />
                                        </div>
                                    </div>

                                </div>


                                <div class="product-info summary col-fit col entry-summary product-summary">
                                    <h1 class="product-title product_title entry-title">${sp.getTenSanPham()}</h1>
                                    <p style="display:none" id="spid">${sp.getId()}</p>
                                    <c:if test = "${sp.getRom().length() > 0}">
										<div class="mt-2">
                                        <span>Dung lượng : </span><a href="" class="btn"
                                            style="border:1px solid #2f80ed; color: #2f80ed;">${sp.getRom()}</a>
                                    	</div>
									</c:if>
									<c:if test = "${sp.getMauSac().length() > 0}">
										<div class="mt-2" style="padding-top:10px;padding-bottom:10px">
                                        <span>Màu sắc : &nbsp; &nbsp; &nbsp; </span><a href="" class="btn"
                                            style="border:1px solid #2f80ed; color: #2f80ed;">${sp.getMauSac()}</a>
                                    	</div>
									</c:if>
                                    <div class="mt-2"
                                        style="background-color: #f8f9fa;margin-bottom: 16px;border: 1px solid #e0e0e0;">
                                        <div style="font-weight: bold;padding: 8px 10px;border: 1px solid #e0e0e0;">Nhận
                                            ngay khuyến mại đặc biệt</div>
                                        <ul style="padding: 8px 25px;">
                                            <li>
                                                <div><span>Trả góp 0% </span></div>
                                            </li>
                                            <li>
                                                <div><span>Tặng gói iCloud 50GB miễn phí 3 tháng </span></div>
                                            </li>
                                            <li>
                                                <div><span>Thu cũ đổi mới trợ giá 20% đến 3 triệu </span></div>
                                            </li>
                                            <li>
                                                <div><span>Tặng bảo hành 2 năm </span>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span>Tặng eSim Thần Tám 79 Itel 1T Data khủng 90GB </span></div>
                                            </li>
                                            <li>
                                                <div><span>Giảm sốc 50% cho gói bảo hành vàng chỉ từ 550.000đ </span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="is-divider small"></div>
                                    <div>
                                        <p class="price product-page-price price-on-sale">
                                            <span>Giá bán :</span> <ins><span
                                                    class="woocommerce-Price-amount amount"><bdi><span id="priceConvert"></span></bdi></span></ins>
                                        </p>
                                    </div>
									<div class="action">
										<button class="add-to-cart single_add_to_cart_button button alt" type="button">
										<i class="fas fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
									</div>
                                </div>
                                <div id="product-sidebar" class="col large-3 hide-for-medium product-sidebar-small">
                                    <div class="row tieu-chi-sidebar" id="row-1179559846">
                                        <div id="col-1076857932" class="col div-cam-ket small-12 large-12">
                                            <div class="col-inner">
                                                <aside id="custom_html-13"
                                                    class="widget_text widget widget_custom_html"><span
                                                        class="widget-title shop-sidebar">Cam Kết Mua Hàng</span></p>
                                                    <div class="is-divider small"></div>
                                                    <div class="textwidget custom-html-widget">
                                                        <ul class="list-camket" style="padding:10px">
                                                            <li><i class="fa fa-check-circle" aria-hidden="true"></i>
                                                                Cam kết 100% hàng chính hãng. </li>
                                                            <li><i class="fa fa-check-circle" aria-hidden="true"></i>
                                                                Nhân viên tư vấn tận tình, chu đáo. </li>
                                                            <li><i class="fa fa-check-circle" aria-hidden="true"></i>
                                                                Xem hàng kiểm tra hàng trước khi thanh toán. </li>
                                                            <li><i class="fa fa-check-circle" aria-hidden="true"></i>
                                                                Cam kết bồi hoàn 200% nếu sản phẩm kém chất lượng, ko rõ
                                                                nguồn gốc . </li>
                                                        </ul>
                                                        <div class="vt-vanc"><strong>Đơn vị vận chuyển</strong><br />
                                                            <img src="resources/Frontend/images/2021/03/giao-hang.jpg">
                                                        </div>
                                                    </div>
                                                </aside>
                                            </div>
                                        </div>
                                    </div>
                                </div>




                            </div>
                        </div>

                        <div class="product-footer mb-5">
                            <div class="">
                                <div class="large-9">
                                    <div class="container">
                                        <div class="product-page-accordian">
                                            <div class="san-pham-tab">
                                                <div>
                                                    <h3 class="tab-thong-tin" style="padding: 10px;padding-left: 20px;">
                                                        Thông số kỹ thuật </h3>
                                                    <div class="tab-thong-tin-trong">
                                                        <div class="card-body">
                                                            <table class="st-pd-table" style="font-size:15px">
                                                                <tbody>
                                                                    <c:if test = "${sp.getManHinh().length() > 0}">
																		<tr>
                                                                        	<td>Màn hình</td>
                                                                        	<td><p class="product-description">${sp.getManHinh()}</p></td>
                                                                    	</tr>
																	</c:if>
                                                                    <c:if test = "${sp.getHeDieuHanh().length() > 0}">
																		<tr>
                                                                        	<td>Hệ điều hành</td>
                                                                        	<td><p class="product-description">${sp.getHeDieuHanh()}</p></td>
                                                                    	</tr>
																	</c:if>
																	<c:if test = "${sp.getCameraSau().length() > 0}">
																		<tr>
                                                                        	<td>Camera sau</td>
                                                                        	<td><p class="product-description">${sp.getCameraSau()}</p></td>
                                                                    	</tr>
																	</c:if>
																	<c:if test = "${sp.getCameraTruoc().length() > 0}">
																		<tr>
                                                                        	<td>Camera trước</td>
                                                                        	<td><p class="product-description">${sp.getCameraTruoc()}</p></td>
                                                                    	</tr>
																	</c:if>
                                                                    <c:if test = "${sp.getCpu().length() > 0}">
                                                                    	<tr>
	                                                                        <td>CPU</td>
	                                                                        <td><p class="product-description">${sp.getCpu()}</p></td>
                                                                    	</tr>
																	</c:if>
                                                                    
                                                                    <c:if test = "${sp.getRam().length() > 0}">
																		<tr>
                                                                        	<td>RAM</td>
                                                                        	<td><p class="product-description">${sp.getRam()}</p></td>
                                                                    	</tr>
																	</c:if>
																	<c:if test = "${sp.getRom().length() > 0}">
																		<tr>
                                                                        	<td>Bộ nhớ trong</td>
                                                                        	<td><p class="product-description">${sp.getRom()}</p></td>
                                                                    	</tr>
																	</c:if>
																	<c:if test = "${sp.getSim().length() > 0}">
																		<tr>
                                                                        	<td>SIM</td>
                                                                        	<td><p class="product-description">${sp.getSim()}</p></td>
                                                                    	</tr>
																	</c:if>
                                                                    <c:if test = "${sp.getDungLuongPin().length() > 0}">
																		<tr>
                                                                        	<td>Pin, Sạc tối đa</td>
                                                                        	<td><p class="product-description">${sp.getDungLuongPin()} , <c:if test = "${sp.getSacToiDa().length() > 0}">${sp.getSacToiDa()}</c:if></p></td>
                                                                    	</tr>
																	</c:if>
                                                                    
																	<c:if test = "${sp.getThietKe().length() > 0}">
																		<tr>
                                                                        	<td>Thiết kế</td>
                                                                        	<td><p class="product-description">${sp.getThietKe()}</p></td>
                                                                    	</tr>
																	</c:if>
																	<c:if test = "${sp.getBaoMat().length() > 0}">
																		<tr>
                                                                        	<td>Bảo mật</td>
                                                                        	<td><p class="product-description">${sp.getBaoMat()}</p></td>
                                                                    	</tr>
																	</c:if>
                                                                    <c:if test = "${sp.getThongTinChung().length() > 0}">
																		<tr>
                                                                        	<td>Thông tin chung</td>
                                                                        	<td><p class="product-description">${sp.getThongTinChung()}</p></td>
                                                                    	</tr>
																	</c:if>
                                                                </tbody>
                                                            </table>

                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>


                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                </div>
			<br>
            </main>
</body>

<script src="<c:url value='/js/client/detailspAjax.js'/>" ></script>