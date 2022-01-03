package com.phoneshop.dto;


import org.springframework.web.multipart.MultipartFile;

public class SanPhamDto {

	private String id;

	private String tenSanPham;
	private String donGia;
	private String donViKho;
	private String thongTinBaoHanh;
	private String thongTinChung;
	private String manHinh;
	private String heDieuHanh;
	private String cpu;
	private String ram;
	private String thietKe;
	private String dungLuongPin;
	private String sacToiDa;
	public String getSacToiDa() {
		return sacToiDa;
	}

	public void setSacToiDa(String sacToiDa) {
		this.sacToiDa = sacToiDa;
	}



	private String baoMat;
	private String cameraSau;
	private String cameraTruoc;
	private String mauSac;
	private String rom;
	private String sim;

	private long danhMucId;
	private long nhaSXId;
	
	private MultipartFile hinhAnh;

	public MultipartFile getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(MultipartFile hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public String getDonGia() {
		return donGia;
	}

	public void setDonGia(String donGia) {
		this.donGia = donGia;
	}

	public String getDonViKho() {
		return donViKho;
	}

	public void setDonViKho(String donViKho) {
		this.donViKho = donViKho;
	}

	public String getThongTinBaoHanh() {
		return thongTinBaoHanh;
	}

	public void setThongTinBaoHanh(String thongTinBaoHanh) {
		this.thongTinBaoHanh = thongTinBaoHanh;
	}

	public String getThongTinChung() {
		return thongTinChung;
	}

	public void setThongTinChung(String thongTinChung) {
		this.thongTinChung = thongTinChung;
	}

	public String getManHinh() {
		return manHinh;
	}

	public void setManHinh(String manHinh) {
		this.manHinh = manHinh;
	}

	public String getHeDieuHanh() {
		return heDieuHanh;
	}

	public void setHeDieuHanh(String heDieuHanh) {
		this.heDieuHanh = heDieuHanh;
	}

	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	public String getThietKe() {
		return thietKe;
	}

	public void setThietKe(String thietKe) {
		this.thietKe = thietKe;
	}

	public String getDungLuongPin() {
		return dungLuongPin;
	}

	public void setDungLuongPin(String dungLuongPin) {
		this.dungLuongPin = dungLuongPin;
	}

	public String getBaoMat() {
		return baoMat;
	}

	public void setBaoMat(String baoMat) {
		this.baoMat = baoMat;
	}

	public String getCameraSau() {
		return cameraSau;
	}

	public void setCameraSau(String cameraSau) {
		this.cameraSau = cameraSau;
	}

	public String getCameraTruoc() {
		return cameraTruoc;
	}

	public void setCameraTruoc(String cameraTruoc) {
		this.cameraTruoc = cameraTruoc;
	}

	public String getMauSac() {
		return mauSac;
	}

	public void setMauSac(String mauSac) {
		this.mauSac = mauSac;
	}

	public String getRom() {
		return rom;
	}

	public void setRom(String rom) {
		this.rom = rom;
	}

	public String getSim() {
		return sim;
	}

	public void setSim(String sim) {
		this.sim = sim;
	}

	public long getDanhMucId() {
		return danhMucId;
	}

	public void setDanhMucId(long danhMucId) {
		this.danhMucId = danhMucId;
	}

	public long getNhaSXId() {
		return nhaSXId;
	}

	public void setNhaSXId(long nhaSXId) {
		this.nhaSXId = nhaSXId;
	}
	


	@Override
	public String toString() {
		return "SanPhamDto [id=" + id + ", tenSanPham=" + tenSanPham + ", donGia=" + donGia + ", donViKho=" + donViKho
				+ ", thongTinBaoHanh=" + thongTinBaoHanh + ", thongTinChung=" + thongTinChung + ", manHinh=" + manHinh
				+ ", heDieuHanh=" + heDieuHanh + ", cpu=" + cpu + ", ram=" + ram + ", thietKe=" + thietKe
				+ ", dungLuongPin=" + dungLuongPin + ", sacToiDa=" + sacToiDa + ", baoMat=" + baoMat + ", cameraSau="
				+ cameraSau + ", cameraTruoc=" + cameraTruoc + ", mauSac=" + mauSac + ", rom=" + rom + ", sim=" + sim
				+ ", danhMucId=" + danhMucId + ", nhaSXId=" + nhaSXId + ", hinhAnh=" + hinhAnh + "]";
	}
}
