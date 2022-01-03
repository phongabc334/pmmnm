package com.phoneshop.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.phoneshop.entities.NguoiDung;
import com.phoneshop.entities.VaiTro;

public interface NguoiDungRepository extends JpaRepository<NguoiDung, Long>{

	NguoiDung findByEmail(String email);

	Page<NguoiDung> findByVaiTro(Set<VaiTro> vaiTro, Pageable of);

	List<NguoiDung> findByVaiTro(Set<VaiTro> vaiTro);
}
