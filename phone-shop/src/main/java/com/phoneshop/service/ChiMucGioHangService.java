package com.phoneshop.service;

import java.util.List;

import com.phoneshop.entities.ChiMucGioHang;
import com.phoneshop.entities.GioHang;
import com.phoneshop.entities.SanPham;

public interface ChiMucGioHangService{
	
	List<ChiMucGioHang> getChiMucGioHangByGioHang(GioHang g);
	
	ChiMucGioHang getChiMucGioHangBySanPhamAndGioHang(SanPham sp,GioHang g);
	
	ChiMucGioHang saveChiMucGiohang(ChiMucGioHang c);
	
	void deleteChiMucGiohang(ChiMucGioHang c);
	
	void deleteAllChiMucGiohang(List<ChiMucGioHang> c);
	
}
