<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Thanh toán</title>
</head>

<script type="text/javascript">	  
	$(document).ready(function() { 
		 $(".mytable .donGia .check").each(function() {
			  var value = accounting.formatMoney($(this).text())+ ' VND';
			  $(this).html(value);
			});
	  
		 $(".mytable .total").each(function() {
			  var value = accounting.formatMoney($(this).text()) + ' VND ';
			  $(this).html(value);
			});
	  });
	</script>

<body>
	<main id="main" class="container">
	<div class="container">
		<form method="POST" action="<%=request.getContextPath()%>/thankyou">
		<div class = "row">
		<br><br>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
			<div class="col-md-1"></div>
			<div class="col-md-4">
				<br>
				<p class="border-p" style="line-height:1.5;"><b>Thông tin nhận hàng</b></p>
			
				<p style="line-height:2;" >Họ tên người nhận hàng *</p>
				<input size="27"  value="${user.hoTen}" name="hoTenNguoiNhan" required>
				
				<p style="line-height:2;">Số điện thoại *</p>
				<input size="27"  value="${user.soDienThoai}" name="sdtNhanHang" required>
				
				
				<p style="line-height:2;">Địa chỉ(số nhà, đường, tỉnh thành) *</p>
				<textarea rows="3" cols="29" name="diaChiNhan" required>${user.diaChi}</textarea>
				<p style="line-height:2;">Ghi chú</p>
				<textarea rows="3" cols="29" name="ghiChu" ></textarea>
	
				<br><br>
				<input type="hidden" id="tongGiaTri" name="tongGiaTri">
			</div>
			
			<div class="col-md-6">
				<br>
				<p class="border-p" style="line-height:1.5;"><b>Giỏ hàng</b></p>
				<br>
				
					<table class="table-cart-checkout mytable">
						 <tr>
							    <th>Ảnh</th>
							    <th>Tên sản phẩm</th>
							    <th>Đơn giá</th>
							    <th>Tổng</th>
						</tr>
						<c:forEach items="${cart}" var="sanpham" >
					
						 <tr style="text-align: center;">
							    <td>
							    	<img width="100px" height="100px" src="/phoneshop/img/${sanpham.id}.png" alt="not found img" class="img-reponsive fix-size-img">
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
				<p>Tổng giá trị đơn hàng:     <b id="ordertotal"> </b></p>
				<br>
				 &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;
				<a href="<%=request.getContextPath()%>/cart" class="btn btn-primary">Quay lại giỏ hàng</a>
				 &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				 
				<button class="btn pull-center" style="color:white;text-transform: none;" type="submit" id="submit">Gửi đơn hàng</button>
			
				<br><br>
			
			</div>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name == null}">
				<div class="col-md-1"></div>
				<div class="col-md-4">
				<br>
				<p class="border-p" style="line-height:1.5;"><b>Thông tin nhận hàng</b></p>
			
				<p style="line-height:2;" >Họ tên người nhận hàng *</p>
				<input size="27" name="hoTenNguoiNhan" required>
				
				<p style="line-height:2;">Số điện thoại *</p>
				<input size="27" name="sdtNhanHang" required>
				
				
				<p style="line-height:2;">Địa chỉ(số nhà, đường, tỉnh thành) *</p>
				<textarea rows="3" cols="29" name="diaChiNhan" required></textarea>
				<p style="line-height:2;">Ghi chú</p>
				<textarea rows="3" cols="29" name="ghiChu" ></textarea>
	
				<br><br>
				<input type="hidden" id="tongGiaTri" name="tongGiaTri">
			</div>
			
			<div class="col-md-6">
				<br>
				<p class="border-p" style="line-height:1.5;"><b>Giỏ hàng</b></p>
				<br>
				
					<table class="table-cart-checkout mytable">
						 <tr>
							    <th>Ảnh</th>
							    <th>Tên sản phẩm</th>
							    <th>Đơn giá</th>
							    <th>Tổng</th>
						</tr>
						<c:forEach items="${cart}" var="sanpham" >
					
						 <tr style="text-align: center;">
							    <td>
							    	<img width="100px" height="100px" src="/phoneshop/img/${sanpham.id}.png" alt="not found img" class="img-reponsive fix-size-img">
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
				<p>Tổng giá trị đơn hàng:     <b id="ordertotal"> </b></p>
				<br>
				 &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;
				<a href="<%=request.getContextPath()%>/cart" class="btn btn-primary">Quay lại giỏ hàng</a>
				 &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				 
				<button class="btn btn-danger pull-center" type="submit" id="submit">Gửi đơn hàng</button>
			
				<br><br>
			
			</div>
			</c:if>
		</div>
		</form>
	</main>
</div>
<script src="<c:url value='/js/client/checkoutAjax.js'/>" ></script>	
</body>
</html>

