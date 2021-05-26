package com.websitedungcuthethao.service;

import java.util.List;

import com.websitedungcuthethao.entity.NhaCungCap;

public interface INhaCungCapService {
	NhaCungCap saveNCC(NhaCungCap nhaCungCap);
	boolean updateNCC(NhaCungCap nhaCungCap);
	NhaCungCap findByTenNhaCungCap(String ten);
	NhaCungCap findNCCByID(Long id);
	List<NhaCungCap> findAll();
}
