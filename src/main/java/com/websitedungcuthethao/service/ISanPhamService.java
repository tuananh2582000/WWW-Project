package com.websitedungcuthethao.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.websitedungcuthethao.dto.SanPhamDTO;
import com.websitedungcuthethao.entity.SanPham;

public interface ISanPhamService {
	List<SanPham> findAll(Pageable pageable);
	List<SanPham> findByTen(String ten);
	void deleteById(Long id);
	void save (SanPham sanPham);
	SanPham findById(Long id);
	void updateSanPham(SanPhamDTO sanPhamDTO);
	List<SanPham> findTop3SanPhamBySoLuotXem();
	List<SanPham> findDSSanPhamNoiBat();
	List<SanPham> findTop3SanPhamGiamGiaNhieuNhat();
	List<SanPham> findByDanhMucID(Long idDM);
	
	List<SanPham> findByDanhMucIDAndPaging(Long idDM, Pageable pageable);

	Long getTotalItem();
}
