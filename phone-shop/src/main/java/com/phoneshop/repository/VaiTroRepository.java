package com.phoneshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.phoneshop.entities.VaiTro;

public interface VaiTroRepository extends JpaRepository<VaiTro, Long> {

	VaiTro findByTenVaiTro(String tenVaiTro);
}
