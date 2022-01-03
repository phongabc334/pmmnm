
function addToCart(id)
	{
		$.ajax({
			type: "GET",		
			url: "http://localhost:8080/phoneshop/api/gio-hang/addSanPham?id="+id,
			success: function(result){
				if(result.status == "false")
				{
					window.alert("Sản phẩm đang hết hàng, quý khách vui lòng quay lại sau");	
				}else
				{
					window.alert("Đã thêm sản phẩm vào giỏ hàng");
				}		
			},
			error : function(e){
				alert("Error: ",e);
				console.log("Error" , e );
			}
		});

		
	}


$(document).ready(function(){
	ajaxGet();

	function ajaxGet(){
		$.ajax({
			type: "GET",		
			url: "http://localhost:8080/phoneshop/api/san-pham/latest",
			success: function(result){
				
				$.each(result, function(i, sanpham){
				
					var content = '<div class="col">'+
                        '<div class="col-inner">'+

                            
                            '<div class="product-small box has-hover box-normal box-text-bottom">'+
                                '<div class="box-image">'+
                                    '<div class="">'+
                                        '<a href="sp?id='+sanpham.id+'">'+
                                            '<img width="247" height="247" '+
                                                'class="lazy-load attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" srcset="" src="/phoneshop/img/'+sanpham.id+'.png"'+
                                                'sizes="(max-width: 247px) 100vw, 247px" /> </a>'+
                                    '</div>'+
                                    '<div class="image-tools top right show-on-hover">'+
                                    '</div>'+
                                    '<div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">'+
                                    '</div>'+
                                '</div>'+

                                '<div class="box-text text-center">'+
                                    '<div class="title-wrapper">'+
                                        '<p class="name product-title woocommerce-loop-product__title"><a href="sp?id='+sanpham.id+'" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">'+sanpham.tenSanPham+'</a></p>'+
                                    '</div>'+
                                    '<div class="price-wrapper text-center">'+
                                        
                                        '<p style="font-size: 16.8px;">'+accounting.formatMoney(sanpham.donGia)+' VND</p>'+
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                        '</div>'+
                    '</div>';
				
	
					$('#listsp').append(content);
				});
			}
			
		});
	}
	
	
	
})
$(document).ready(function(){
	ajaxGet5();

	function ajaxGet5(){
		$.ajax({
			type: "GET",		
			url: "http://localhost:8080/phoneshop/api/san-pham/pk-latest",
			success: function(result){
				
				$.each(result, function(i, sanpham){
				
					var content1 = '<div class="col">'+
                        '<div class="col-inner">'+

                            
                            '<div class="product-small box has-hover box-normal box-text-bottom">'+
                                '<div class="box-image">'+
                                    '<div class="">'+
                                        '<a href="sp?id='+sanpham.id+'">'+
                                            '<img width="247" height="247" '+
                                                'class="lazy-load attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" loading="lazy" srcset="" src="/phoneshop/img/'+sanpham.id+'.png"'+
                                                'sizes="(max-width: 247px) 100vw, 247px" /> </a>'+
                                    '</div>'+
                                    '<div class="image-tools top right show-on-hover">'+
                                    '</div>'+
                                    '<div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">'+
                                    '</div>'+
                                '</div>'+

                                '<div class="box-text text-center">'+
                                    '<div class="title-wrapper">'+
                                        '<p class="name product-title woocommerce-loop-product__title"><a href="sp?id='+sanpham.id+'" class="woocommerce-LoopProduct-link woocommerce-loop-product__link">'+sanpham.tenSanPham+'</a></p>'+
                                    '</div>'+
                                    '<div class="price-wrapper">'+
                                        
                                        '<p style="font-size: 16.8px;">'+accounting.formatMoney(sanpham.donGia)+' VND</p>'+
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                        '</div>'+
                    '</div>';
				
	
					$('#phukien').append(content1);
				});
			}
			
		});
	}
	
	
	
})
