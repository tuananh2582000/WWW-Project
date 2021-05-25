package com.websitedungcuthethao.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.websitedungcuthethao.dto.GiohangSanphamDTO;
import com.websitedungcuthethao.entity.ChiTietHoaDon;
import com.websitedungcuthethao.entity.HoaDon;
import com.websitedungcuthethao.repository.ChiTietHoaDonRepository;
import com.websitedungcuthethao.repository.HoaDonRepository;
import com.websitedungcuthethao.repository.SanPhamRepository;
import com.websitedungcuthethao.service.IHoaDonService;

@Service
public class HoaDonService implements IHoaDonService {
	@Autowired
	private HoaDonRepository hoaDonRepository;
	
	@Autowired
	SanPhamRepository sanPhamRepository;
	
	@Autowired
	ChiTietHoaDonRepository chiTietHoaDonRepository;

	@Override
	public void saveHoaDon(HoaDon hoaDon) {
		hoaDonRepository.save(hoaDon);
	}

	@Override
	public HoaDon findById(Long id) {
		return hoaDonRepository.findOne(id);
	}

	@Override
	public void themDSChiTietHoaDon(Long idHD, HashMap<Long, GiohangSanphamDTO> gioHang) {
		// TODO Auto-generated method stub
		for(Map.Entry<Long, GiohangSanphamDTO> item : gioHang.entrySet()) {
			ChiTietHoaDon ct = new ChiTietHoaDon();
			ct.setHoadon(hoaDonRepository.findOne(idHD));
			ct.setSanpham(sanPhamRepository.findById(item.getValue().getSanPham().getId()));
			ct.setSoLuong(item.getValue().getSoLuong());
			
			chiTietHoaDonRepository.save(ct);
		}
	}

	
	
}
