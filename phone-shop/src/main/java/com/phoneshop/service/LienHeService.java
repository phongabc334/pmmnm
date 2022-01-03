package com.phoneshop.service;

import java.text.ParseException;

import org.springframework.data.domain.Page;

import com.phoneshop.dto.SearchLienHeObject;
import com.phoneshop.entities.LienHe;

public interface LienHeService {

	Page<LienHe> getLienHeByFilter(SearchLienHeObject object, int page) throws ParseException;

	LienHe findById(long id);
	
	LienHe save(LienHe lh);
	
	int countByTrangThai(String trangThai);

}
