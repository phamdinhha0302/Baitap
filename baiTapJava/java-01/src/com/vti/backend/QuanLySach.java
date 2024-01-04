package com.vti.backend;

import com.vti.entity.Bao;
import com.vti.entity.Sach;
import com.vti.entity.TaiLieu;
import com.vti.entity.TapChi;

import java.util.ArrayList;

public class QuanLySach {
    public Object them;
    private ArrayList<TaiLieu> danhSachTaiLieu;

    public QuanLySach() {
        danhSachTaiLieu = new ArrayList<>();
    }

    public void themMoiTaiLieu(TaiLieu taiLieu) {
        danhSachTaiLieu.add(taiLieu);
    }

    public void xoaTaiLieuTheoMa(String maTaiLieu) {
        danhSachTaiLieu.removeIf(taiLieu -> taiLieu.getMaTaiLieu().equals(maTaiLieu));
    }

    public void hienThiThongTinTaiLieu() {
        for (TaiLieu taiLieu : danhSachTaiLieu) {
            System.out.println(taiLieu.getInfo());
        }
    }

    public void timKiemTheoLoai(String loaiTaiLieu) {
        for (TaiLieu taiLieu : danhSachTaiLieu) {
            if (taiLieu instanceof Sach && loaiTaiLieu.equalsIgnoreCase("Sach")) {
                System.out.println(taiLieu.getInfo());
            } else if (taiLieu instanceof TapChi && loaiTaiLieu.equalsIgnoreCase("TapChi")) {
                System.out.println(taiLieu.getInfo());
            } else if (taiLieu instanceof Bao && loaiTaiLieu.equalsIgnoreCase("Bao")) {
                System.out.println(taiLieu.getInfo());
            }
        }
    }
}
