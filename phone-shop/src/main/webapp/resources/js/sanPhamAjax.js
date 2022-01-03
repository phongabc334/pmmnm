$(document).ready(function() {

	// load first when coming page
	ajaxGet(1);	
	
	// do get
	function ajaxGet(page){
		// prepare data
   	    var data = $('#searchForm').serialize();	
		$.ajax({
			type: "GET",		
			data: data,
			contentType : "application/json",
			url: "http://localhost:8080/phoneshop/api/san-pham/all" + '?page=' + page,
			success: function(result){
				$.each(result.content, function(i, sanPham){
					var sanPhamRow = '<tr>' +
					                  '<td>' + '<img src="/phoneshop/img/'+sanPham.id+'.png" class="img-responsive" style="height: 50px; width: 50px" />'+'</td>' +
					                  '<td>' + sanPham.tenSanPham + '</td>' +
					                  '<td>' + sanPham.danhMuc.tenDanhMuc + '</td>' +
					                  '<td>' + sanPham.hangSanXuat.tenHangSanXuat + '</td>' +
					                  '<td>' + sanPham.donGia + '</td>' +
					                  '<td>' + sanPham.donViKho + '</td>' +
					                  '<td width="0%">'+'<input type="hidden" id="sanPhamId" value=' + sanPham.id + '>'+ '</td>' + 
					                  '<td> <button class="btn btn-warning btnChiTiet" style="margin-right: 6px">Chi tiết</button>' ;
					
					var checkTenDanhMuc = (sanPham.danhMuc.tenDanhMuc.toLowerCase()).indexOf("điện thoại".toLowerCase());
					sanPhamRow += ( checkTenDanhMuc != -1)?'<button class="btn btn-primary btnCapNhatphone" >Cập nhật</button>':'<button class="btn btn-primary btnCapNhatOther" >Cập nhật</button>';
					sanPhamRow += '  <button class="btn btn-danger btnXoaSanPham">Xóa</button></td>'+'</tr>';
					$('.sanPhamTable tbody').append(sanPhamRow);
				});
								
				if(result.totalPages > 1 ){
					for(var numberPage = 1; numberPage <= result.totalPages; numberPage++) {
						var li = '<li class="page-item "><a class="pageNumber">'+numberPage+'</a></li>';
					    $('.pagination').append(li);
					};
					
					
					// active page pagination
			    	$(".pageNumber").each(function(index){	
			    		if($(this).text() == page){
			    			$(this).parent().removeClass().addClass("page-item active");
			    		}
			    	});
				};
			},
			error : function(e){
				alert("Error: ",e);
				console.log("Error" , e );
			}
		});
	};
	
	// event khi click vào dropdown chọn danh mục thêm sản phẩm
	$('#danhMucDropdown').mouseup(function() {
		var open = $(this).data("isopen");
		if (open) {
			var label = $('#danhMucDropdown option:selected').text();
			if ((label.toLowerCase()).indexOf("điện thoại".toLowerCase()) != -1) {
				$('.phoneModal').modal('show');
				$("#idDanhMucphone").val($(this).val());
				$('#phoneForm').removeClass().addClass("addphoneForm");
				$('#phoneForm #btnSubmit').removeClass().addClass("btn btn-primary btnSavephoneForm");
			} else {
				$('.otherModal').modal('show');
				$("#idDanhMucKhac").val($(this).val());
				$('#otherForm').removeClass().addClass("addOtherForm");
				$('#otherForm #btnSubmit').removeClass().addClass("btn btn-primary btnSaveOtherForm");
			}			
            $(".modal-title").text("Thêm mới sản phẩm danh mục "+ label);
			
		}
		$(this).data("isopen", !open);
	});
	
    $(document).on('click', '#btnDuyetSanPham', function (event) {
    	event.preventDefault();
    	$('.sanPhamTable tbody tr').remove();
    	$('.pagination li').remove();
    	ajaxGet(1);
        
    });
    
    
	// event khi ẩn modal form
	$('.phoneModal, .otherModal').on('hidden.bs.modal', function(e) {
		e.preventDefault();
		$("#idDanhMucphone, #idDanhMucKhac").val("");
		$("#idSanPhamphone, #idSanPhamKhac").val("");
			
	    $('#phoneForm').removeClass().addClass("phoneForm");
		$('#phoneForm #btnSubmit').removeClass().addClass("btn btn-primary");
		$('#phoneForm').trigger("reset");
		
		$('#otherForm').removeClass().addClass("otherForm");
		$('#otherForm #btnSubmit').removeClass().addClass("btn btn-primary");
		$('#otherForm').trigger("reset");
		$('input, textarea').next().remove();
	});
	
	// btn Save Form phone Event
    $(document).on('click', '.btnSavephoneForm', function (event) {
    	event.preventDefault();
		ajaxPostphone();
		resetData();
    });
 
    function ajaxPostphone() {
    	// PREPATEE DATA
    	 var form = $('.addphoneForm')[0];   	 
    	 var data = new FormData(form);
    	 
    	 // do post
    	 $.ajax({
     		async:false,
 			type : "POST",
 			contentType : "application/json",
 			url : "http://localhost:8080/phoneshop/api/san-pham/save",
 			enctype: 'multipart/form-data',
 			data : data,
 			
 		    // prevent jQuery from automatically transforming the data into a
			// query string
 	        processData: false,
 	        contentType: false,
 	        cache: false,
 	        timeout: 1000000,
 	        
 			success : function(response) {
 				if(response.status == "success"){
 					$('.phoneModal').modal('hide');
 					alert("Thêm thành công");
 				} else {
 			    	$('input, textarea').next().remove();
 		            $.each(response.errorMessages, function(key,value){
 		            	if(key != "id"){
 		   	                $('input[name='+ key +']').after('<span class="error">'+value+'</span>');
 		   	                $('textarea[name='+ key +']').after('<span class="error">'+value+'</span>');
 		            	};
 		              });
 				}
 		    	
 			},
 			error : function(e) {
 				alert("Error!")
 				console.log("ERROR: ", e);
 			}
 		}); 
    }
    
    // btnSaveOtherForm event click
    $(document).on('click', '.btnSaveOtherForm', function (event) {
    	event.preventDefault();
		ajaxPostOther();
		resetData();
    });
 
    function ajaxPostOther() {
    	// PREPATEE DATA
    	 var form = $('.addOtherForm')[0];   	 
    	 var data = new FormData(form);  	 
    	 // do post
    	 $.ajax({
     		async:false,
 			type : "POST",
 			contentType : "application/json",
 			url : "http://localhost:8080/phoneshop/api/san-pham/save",
 			enctype: 'multipart/form-data',
 			data : data,
 			
 		    // prevent jQuery from automatically transforming the data into a
			// query string
 	        processData: false,
 	        contentType: false,
 	        cache: false,
 	        timeout: 1000000,
 	        
 			success : function(response) {
 				if(response.status == "success"){
 					$('.otherModal').modal('hide');
 					alert("Thêm thành công");
 				} else {
 					$('input, textarea').next().remove();
 		            $.each(response.errorMessages, function(key,value){
 		            	if(key != "id"){
 		   	                $('input[name='+ key +']').after('<span class="error">'+value+'</span>');
 		   	                $('textarea[name='+ key +']').after('<span class="error">'+value+'</span>');
 		            	};
 		              });
 				}
 		    	
 			},
 			error : function(e) {
 				alert("Error!")
 				console.log("ERROR: ", e);
 			}
 		}); 
    }
    
    
    // click cập nhật button 
    // vs danh mục phone
    $(document).on("click",".btnCapNhatphone", function(event){
		event.preventDefault();
		var sanPhamId = $(this).parent().prev().children().val();	
		$('#phoneForm').removeClass().addClass("updatephoneForm");
		$('#phoneForm #btnSubmit').removeClass().addClass("btn btn-primary btnUpdatephoneForm");
	
		var href = "http://localhost:8080/phoneshop/api/san-pham/"+sanPhamId;
		$.get(href, function(sanPham) {
			populate('.updatephoneForm', sanPham);
			$("#idDanhMucphone").val(sanPham.danhMuc.id);
			var hangSXId = sanPham.hangSanXuat.id;
			$("#nhaSXId").val(hangSXId);	
		});
		
		removeElementsByClass("error");		
		$('.updatephoneForm .phoneModal').modal();
	});
    
	// btn update phone form Event
    $(document).on('click', '.btnUpdatephoneForm', function (event) {
    	event.preventDefault();
		ajaxPutphone();
		resetData();
    });
 
    function ajaxPutphone() {
    	
   	 var form = $('.updatephoneForm')[0];   	 
	 var data = new FormData(form);
	 console.log(data);
	 
	 // do post
	 $.ajax({
 		async:false,
			type : "POST",
			contentType : "application/json",
			url : "http://localhost:8080/phoneshop/api/san-pham/save",
			enctype: 'multipart/form-data',
			data : data,
			
		    // prevent jQuery from automatically transforming the data into a
		// query string
	        processData: false,
	        contentType: false,
	        cache: false,
	        timeout: 1000000,
	        
			success : function(response) {
				if(response.status == "success"){
					$('.phoneModal').modal('hide');
					alert("Cập nhật thành công");
				} else {
			    	$('input, textarea').next().remove();
		            	if(key != "id"){
 		   	                $('input[name='+ key +']').after('<span class="error">'+value+'</span>');
 		   	                $('textarea[name='+ key +']').after('<span class="error">'+value+'</span>');
 		            	};
				}
		    	
			},
			error : function(e) {
				alert("Error!")
				console.log("ERROR: ", e);
			}
		}); 
    }
    
    
    // với danh mục khác
    $(document).on("click",".btnCapNhatOther", function(event){
		event.preventDefault();
		var sanPhamId = $(this).parent().prev().children().val();		
		$('#otherForm').removeClass().addClass("updateOtherForm");
		$('#otherForm #btnSubmit').removeClass().addClass("btn btn-primary btnUpdateOtherForm");
	
		var href = "http://localhost:8080/phoneshop/api/san-pham/"+sanPhamId;
		$.get(href, function(sanPham) {
			populate('.updateOtherForm', sanPham);
			$("#idDanhMucKhac").val(sanPham.danhMuc.id);
			var hangSXId = sanPham.hangSanXuat.id;
			$("#nhaSXIdKhac").val(hangSXId);	
		});		
		removeElementsByClass("error");		
		$('.updateOtherForm .otherModal').modal();
	});
    
    // btnUpdateOtherForm event click
    $(document).on('click', '.btnUpdateOtherForm', function (event) {
    	event.preventDefault();
	    ajaxPutOther();
		resetData();
    });
 
    function ajaxPutOther() {
    	// PREPARE DATA
   	     var form = $('.updateOtherForm')[0];   	 
	     var data = new FormData(form);  	
    	 // do put
    	 $.ajax({
      		async:false,
  			type : "POST",
  			contentType : "application/json",
  			url : "http://localhost:8080/phoneshop/api/san-pham/save",
  			enctype: 'multipart/form-data',
  			data : data,
  			
  		    // prevent jQuery from automatically transforming the data into a
 			// query string
  	        processData: false,
  	        contentType: false,
  	        cache: false,
  	        timeout: 1000000,
  	        
  			success : function(response) {
  				if(response.status == "success"){
  					$('.otherModal').modal('hide');
  					alert("Cập nhật thành công");
  				} else {
  					$('input, textarea').next().remove();
  		            $.each(response.errorMessages, function(key,value){
 		            	if(key != "id"){
 		   	                $('input[name='+ key +']').after('<span class="error">'+value+'</span>');
 		   	                $('textarea[name='+ key +']').after('<span class="error">'+value+'</span>');
 		            	};
  		            });
  				}
  		    	
  			},
  			error : function(e) {
  				alert("Error!")
  				console.log("ERROR: ", e);
  			}
  		}); 
     }
    
    
	// click vào button xóa
    $(document).on("click",".btnXoaSanPham", function() {
		
    	var sanPhamId = $(this).parent().prev().children().val();	
		var workingObject = $(this);
		
		var confirmation = confirm("Bạn chắc chắn xóa sản phẩm này ?");
		if(confirmation){
		  $.ajax({
			  async:false,
			  type : "DELETE",
			  url : "http://localhost:8080/phoneshop/api/san-pham/delete/" + sanPhamId,
			  success: function(resultMsg){
				  resetDataForDelete();
				  alert("Xóa thành công");
			  },
			  error : function(e) {
				 console.log("ERROR: ", e);
			  }
		  });	
		}
		resetData();
     });
    
	// click vào button chi tiết
    $(document).on("click",".btnChiTiet", function() {
		
    	var sanPhamId = $(this).parent().prev().children().val();	
    	console.log(sanPhamId);
    	
    	var href = "http://localhost:8080/phoneshop/api/san-pham/"+sanPhamId;
		$.get(href, function(sanPham) {
			$('.tenSanPham').html("<span style='font-weight: bold'>Tên sản phẩm : </span> "+ sanPham.tenSanPham);
			$('.maSanPham').html("<span style='font-weight: bold'> Mã sản phẩm : </span>"+ sanPham.id);
			$('.hangSangXuat').html("<span style='font-weight: bold'>Hãng sản xuất : </span>"+ sanPham.hangSanXuat.tenHangSanXuat);
			
			var checkTenDanhMuc = (sanPham.danhMuc.tenDanhMuc.toLowerCase()).indexOf("điện thoại".toLowerCase());
			console.log(checkTenDanhMuc != -1);
			if(checkTenDanhMuc != -1){
			$('.cpu').html("<span style='font-weight: bold'>CPU : </span>"+ sanPham.cpu);
			$('.ram').html("<span style='font-weight: bold'>RAM : </span>"+ sanPham.ram);
			$('.cameraTruoc').html("<span style='font-weight: bold'>Camera trước : </span>"+ sanPham.cameraTruoc);
			$('.cameraSau').html("<span style='font-weight: bold'>Camera sau : </span>"+ sanPham.cameraSau);
			$('.rom').html("<span style='font-weight: bold'>Bộ nhớ trong : </span>"+ sanPham.rom);
			$('.dungLuongPin').html("<span style='font-weight: bold'>Pin, Sạc : </span>"+ sanPham.dungLuongPin + ", "+ sanPham.sacToiDa);
			$('.heDieuHanh').html("<span style='font-weight: bold'>Hệ điều hành : </span>"+ sanPham.heDieuHanh);
			$('.manHinh').html("<span style='font-weight: bold'>Màn hình : </span>"+ sanPham.manHinh);
			$('.sim').html("<span style='font-weight: bold'>Sim : </span>"+ sanPham.sim);
			$('.baoMat').html("<span style='font-weight: bold'>Bảo mật : </span>"+ sanPham.baoMat);
			
			}
			$('.thietKe').html("<span style='font-weight: bold'>Thiết kế : </span>"+ sanPham.thietKe);
			$('.thongTinChung').html("<span style='font-weight: bold'>Thông tin chung : </span>"+ sanPham.thongTinChung);
			$('.donGia').html("<span style='font-weight: bold'>Đơn giá : </span>"+ sanPham.donGia +" VNĐ");
			$('.baoHanh').html("<span style='font-weight: bold'>Thông tin bảo hành : </span>"+ sanPham.thongTinBaoHanh);
			$('.donViKho').html("<span style='font-weight: bold'>Số lượng còn : </span>"+ sanPham.donViKho);
			$('.mauSac').html("<span style='font-weight: bold'>Màu : </span>"+ sanPham.mauSac);
			$('.hinhAnh').attr("src", "/phoneshop/img/"+sanPham.id+".png");
			
		});
			
    	$('#chiTietModal').modal('show');
    	
    });
    
    // reset table after delete
    function resetDataForDelete(){
       	var count = $('.sanPhamTable tbody').children().length;
    	$('.sanPhamTable tbody tr').remove();
    	var page = $('li.active').children().text();
    	$('.pagination li').remove();
    	console.log(page);
    	if(count == 1){    	
    		ajaxGet(page -1 );
    	} else {
    		ajaxGet(page);
    	}

    };
    
    // reset table after post, put, filter
    function resetData(){   	
    	var page = $('li.active').children().text();
    	$('.sanPhamTable tbody tr').remove();
    	$('.pagination li').remove();
        ajaxGet(page);
    };
    
    // event khi click vào phân trang Sản phẩm
	$(document).on('click', '.pageNumber', function (event){
		event.preventDefault();
		var page = $(this).text();	
    	$('.sanPhamTable tbody tr').remove();
    	$('.pagination li').remove();
    	ajaxGet(page);	
	});
	
	
    // event khi click vào nhấn phím vào ô tìm kiếm sản phẩm theo tên
	$(document).on('keyup', '#searchById', function (event){
		event.preventDefault();
		var sanPhamId = $('#searchById').val();
		console.log(sanPhamId);
		if(sanPhamId != ''){
    	  $('.sanPhamTable tbody tr').remove();
    	  $('.pagination li').remove();
		  var href = "http://localhost:8080/phoneshop/api/san-pham/"+sanPhamId;
		  $.get(href, function(sanPham) {
			  var sanPhamRow = '<tr>' +
              '<td>' + '<img src="/phoneshop/img/'+sanPham.id+'.png" class="img-responsive" style="height: 50px; width: 50px" />'+'</td>' +
              '<td>' + sanPham.tenSanPham + '</td>' +
              '<td>' + sanPham.danhMuc.tenDanhMuc + '</td>' +
              '<td>' + sanPham.hangSanXuat.tenHangSanXuat + '</td>' +
              '<td>' + sanPham.donGia + '</td>' +
              '<td>' + sanPham.donViKho + '</td>' +
              '<td width="0%">'+'<input type="hidden" id="sanPhamId" value=' + sanPham.id + '>'+ '</td>' + 
              '<td><button class="btn btn-warning btnChiTiet" style="margin-right: 6px">Chi tiết</button>'  ;

              var checkTenDanhMuc = (sanPham.danhMuc.tenDanhMuc.toLowerCase()).indexOf("điện thoại".toLowerCase());
                  sanPhamRow += ( checkTenDanhMuc != -1)?'  <button class="btn btn-primary btnCapNhatphone" >Cập nhật</button>':'<button class="btn btn-primary btnCapNhatOther" >Cập nhật</button>';
                  sanPhamRow += ' <button class="btn btn-danger btnXoaSanPham">Xóa</button></td>'+'</tr>';
                  $('.sanPhamTable tbody').append(sanPhamRow);
		  });
		} else {
			resetData();
		}
	});
	
    // fill input form với JSon Object
    function populate(frm, data) {
    	  $.each(data, function(key, value){
    	    $('[name='+key+']', frm).val(value);
    	  });
    	}
    
	// event khi ẩn modal chi tiết
	$('#chiTietModal').on('hidden.bs.modal', function(e) {
		e.preventDefault();
		$(".chiTietForm p").text(""); // reset text thẻ p
	});
    
    // remove element by class name
    function removeElementsByClass(className){
        var elements = document.getElementsByClassName(className);
        while(elements.length > 0){
            elements[0].parentNode.removeChild(elements[0]);
        }
    }
    
    (function ($) {
        $.fn.serializeFormJSON = function () {

            var o = {};
            var a = this.serializeArray();
            $.each(a, function () {
                if (o[this.name]) {
                    if (!o[this.name].push) {
                        o[this.name] = [o[this.name]];
                    }
                    o[this.name].push(this.value || '');
                } else {
                    o[this.name] = this.value || '';
                }
            });
            return o;
        };
    })(jQuery);

});