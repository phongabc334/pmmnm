package com.phoneshop.service;

import com.phoneshop.entities.GioHang;
import com.phoneshop.entities.NguoiDung;

public interface GioHangService {
	
	GioHang getGioHangByNguoiDung(NguoiDung n);
	
	GioHang save(GioHang g);
}
