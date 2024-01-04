package com.vti.frontend;

import com.vti.backend.QuanLySach;
import com.vti.entity.Bao;
import com.vti.entity.Sach;
import com.vti.entity.TapChi;

public class QuanLyThuVien {
    public static void main(String[] args) {
        QuanLySach quanLySach = new QuanLySach();

        Sach sach1 = new Sach("S1", "NXB A", 100, "Tac Gia A", 200);
        TapChi tapChi1 = new TapChi("T1", "NXB B", 50, 1, 12);
        Bao bao1 = new Bao("B1", "NXB C", 30, "01/01/2023");

        quanLySach.themMoiTaiLieu(sach1);
        quanLySach.themMoiTaiLieu(tapChi1);
        quanLySach.themMoiTaiLieu(bao1);

        System.out.println("Danh sách tài liệu:");
        quanLySach.hienThiThongTinTaiLieu();

        System.out.println("\nTìm kiếm theo loại:");
        quanLySach.timKiemTheoLoai("Sach");
        quanLySach.timKiemTheoLoai("TapChi");
        quanLySach.timKiemTheoLoai("Bao");
    }
}
