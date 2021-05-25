package com.websitedungcuthethao.controller.nguoidung;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.websitedungcuthethao.constant.SystemConstant;
import com.websitedungcuthethao.entity.NguoiDung;
import com.websitedungcuthethao.service.impl.LoaiNguoiDungService;
import com.websitedungcuthethao.service.impl.NguoiDungService;

@Controller
@RequestMapping("/dangky")
public class DangKyTaiKhoanController {
	
	@Autowired
	private NguoiDungService nguoiDungService;
	
	@Autowired
	private LoaiNguoiDungService loaiNguoiDungService;

	@GetMapping
	public String dangKy(Model model) {
		model.addAttribute("nguoiDung",new NguoiDung());
		return "dangkytaikhoan/dangky_nguoidung";
	}
	
	@PostMapping
	public String themNguoiDung(@ModelAttribute("nguoiDung") NguoiDung nguoiDung) {
	
		nguoiDung.setMatKhau(BCrypt.hashpw(nguoiDung.getMatKhau(), BCrypt.gensalt(12)));
		nguoiDung.setTrangThai(SystemConstant.ACTIVE_STATUS);
		
		NguoiDung nd1 = new NguoiDung();
		nd1.setLoainguoidung(loaiNguoiDungService.findByTenLoaiNguoiDung(SystemConstant.ROLE_NGUOIDUNG));
		nd1.setTrangThai(SystemConstant.ACTIVE_STATUS);
		nd1.setHo(nguoiDung.getHo());
		nd1.setTen(nguoiDung.getTen());
		nd1.setGioiTinh(nguoiDung.isGioiTinh());
		nd1.setEmail(nguoiDung.getEmail());
		nd1.setSoDienThoai(nguoiDung.getSoDienThoai());
		nd1.setTenDangNhap(nguoiDung.getTenDangNhap());
		nd1.setMatKhau(nguoiDung.getMatKhau());
//		nguoiDungService.saveNguoiDung(nd1);
		System.out.println(nd1.toString());
		return "redirect:/dang-nhap";
	}
	
	
}