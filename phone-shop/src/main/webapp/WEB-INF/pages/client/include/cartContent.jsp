<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Frontend/css/cartTable.css">
<style>
html
{
    font-size: 100%;
}
</style>
</head>
<script type="text/javascript">	  
	$(document).ready(function() { 
	 
		 $(".table-convert-price .covertPriceProduct").each(function() {
			  var value = accounting.formatMoney($(this).text())+ ' VND';
			  $(this).html(value);
			});
		 $(".table-convert-price .total").each(function() {
			  var value = accounting.formatMoney($(this).text());
			  $(this).html(value);
			});
		 
	  });
	</script>

<body>
	
	<main id="main" class="container">
		<div class="container">
			<br>
		  <h2 style="">QUẢN LÝ GIỎ HÀNG</h2> <br>
		  <div class="col-10">
		  <c:if test="${checkEmpty != 0 }">
		  <table class="table-cart-checkout mytable table-convert-price" >
		 <tr>
				<td>STT</td>
				<td>Ảnh</td>
				<td>Tên sản phẩm</td>
				<td>Đơn giá</td>
				<td>Số lượng</td>
				<td>Tổng</td>
				<td>Xóa</td>
		</tr>
		<c:forEach var="sanpham" items="${cart}" varStatus="loop">			
		<tr class="cart_line" id="item${sanpham.id}">
				<div>
				<td>${loop.index+1}</td>
				<td><img src="/phoneshop/img/${sanpham.id}.png" style="width: 150px" class="cart-img"></td>
				<td>
					<p class="cart_ten"><a href="<c:url value="/sp?id=${sanpham.id}" />">${sanpham.tenSanPham}</a></p>
					<p class="cart_masanpham">Mã sản phẩm : <span>${sanpham.id}</span></p>
					<p class="">Bảo hành : ${sanpham.thongTinBaoHanh}</p>
				</td>
				<td class="covertPriceProduct">${sanpham.donGia}</td>
				<td>
					<input class="input_num_cart" type="number" value="${quanity[sanpham.id]}" min="1" onChange="changeQuanity(${sanpham.id},this.value,${sanpham.donGia})">
				</td>
				<td><b><span class="total" id="item${sanpham.id}_total" name="total_price">${sanpham.donGia*quanity[sanpham.id]}</span> VND</b></td>
				<td class="cart-img">
					<a class="btn btn-danger" onClick="deleteFromCart(${sanpham.id})"><i class="far fa-trash-alt"></i></a>
				</td>
				</div>
			
		</tr>
		</c:forEach>
		
		
			<tr>
				<td colspan="7">
					<p class="cart_tongdonhang" style="text-align:right">Tổng giá trị đơn hàng : <b style="color:red"><span id="ordertotal"></span> VND</b></p>
				</td>
			</tr>
			<tr>
				<td colspan="6">
				<a class="btn btn-primary" href="<%=request.getContextPath()%>/"><i class="fas fa-cart-plus"></i>  Mua thêm sản phẩm khác</a>
				</td>
				<td colspan="1" style="float: right;">
				<a class="btn btn-warning " href="<%=request.getContextPath()%>/checkout"><i class="fas fa-check"></i> Thanh toán</a>
				</td>
			</tr>
		
			
		
		</tr>
		</table>
		</c:if>
		<c:if test="${checkEmpty == 0 }">
			<div>
				<h2 style="text-align:center">Bạn chưa có sản phẩm nào trong giỏ hàng !</h2>
			</div>
			<a class="btn btn-primary" href="/phoneshop/">Mua thêm sản phẩm</a>
		</c:if>  
		</div>  
		  
		  <div class="col-xs-1">
		  
		  </div>
		  
		</div>
		<br>
	</main>
<script src="<c:url value='/js/client/cartAjax.js'/>" ></script>	 

</body>
</html>