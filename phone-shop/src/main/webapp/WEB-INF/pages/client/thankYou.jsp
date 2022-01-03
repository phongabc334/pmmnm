<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<script src="Frontend/js/jquery.min.js"></script>
		<script src="Frontend/js/responsiveslides.min.js"></script>
		<script src="js/client/accounting.js"></script>
		<link rel="stylesheet" href="Frontend/css/login.css">
	<title>Thanh toán</title>
	</head>

	
	<body>
	<script type="text/javascript">	  
	$(document).ready(function() { 
		 $(".table-convert-price .donGia .check").each(function() {
			  var value = accounting.formatMoney($(this).text())+ ' VND';
			  $(this).html(value);
			});
	  
		 $(".table-convert-price .total").each(function() {
			  var value = accounting.formatMoney($(this).text()) + ' VND ';
			  $(this).html(value);
			 
			});
	  });
	</script>
		
		<!----start-Header---->
	 <jsp:include page="include/homeHeader.jsp"></jsp:include>
		<!----End-Header---->
	<main id="main"> 
	<div class= "container">
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-10">
		<br>
		<p><b>QUÝ KHÁCH ĐÃ ĐẶT HÀNG THÀNH CÔNG</b></p><br>
		
		<p> Thông tin đơn hàng đã đặt :</p>
		<p><b>ID/Mã đơn hàng: </b> ${donhang.getId() }</p>
		<p><b>Họ tên người nhận hàng: </b> ${donhang.getHoTenNguoiNhan()}</p>
		<p><b>Số điện thoại: </b>${donhang.getSdtNhanHang()}</p>
		<p><b>Địa chỉ: </b>${donhang.getDiaChiNhan()}</p>
		<p><b>Ghi chú: </b>${donhang.getGhiChu() } </p>
		<p><b>Chúng tôi đã nhận được đơn đặt hàng với những sản phẩm như sau:</b></p>
		
		
		
					
					<c:forEach items="${cart}" var="sanpham" >
					<table class="table-cart-checkout mytable .table-convert-price">
					 <tr>
						    <th>Ảnh</th>
						    <th>Tên sản phẩm</th>
						    <th>Đơn giá</th>
						    <th>Tổng</th>
					</tr>
					 <tr style="text-align: center;">
						    <td>
						    	<img src="/phoneshop/img/${sanpham.id}.png" width="100px" alt="not found img" class="img-reponsive fix-size-img">
						    </td>
						    <td style="color:green">
						    ${sanpham.tenSanPham}
						    </td>
						    
						    <td class="donGia" >
						    	<div class="check " style ="display: inline-block; ">${sanpham.donGia}</div> 
						    	<div style="display: inline-block; "> x ${quanity[sanpham.id]}</div>
						    </td>
						    
						    <td>
						    	<div class="total">${sanpham.donGia*quanity[sanpham.id]}</div> 
						    </td>
						</tr>
					</c:forEach>
					
				</table>
		
		<br>
			<p>Tổng giá trị đơn hàng:     <b style="color:red" id="ordertotal"> </b></p>
			<br>
		
		
		
		

		<h3>Xin chân thành cảm ơn quý khách hàng đã tin tưởng sử dụng dịch vụ, sản phẩm của chúng tôi</><br>
		<br>
		<a class="btn btn-primary" href="<%=request.getContextPath()%>/">Nhấn vào đây để tiếp tục mua sắm</a>
		<br>
		<br>
		</div>
		<div class="col-md-1">
		</div>
	
	
	
	</div>
	
	
	</div>
	</main>
		<!----start-Footder---->
	<jsp:include page="include/homeFooter.jsp"></jsp:include>
	<!----End-Footder---->
	<script src="<c:url value='/js/client/checkoutAjax.js'/>" ></script>	
	</body>
</html>

