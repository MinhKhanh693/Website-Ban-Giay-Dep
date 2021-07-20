
using DatabaseProvider.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace DatabaseIO
{
    public class DBIO
    {

        MyModel mydb = new MyModel();

        public List<LoaiSanPham> GetListLoaiSanPham()
        {
            string sql = "select * from LoaiSanPham ";
            return mydb.Database.SqlQuery<LoaiSanPham>(sql).ToList();
        }
        public List<Size> GetListSize()
        {
            string sql = "select * from Size ";
            return mydb.Database.SqlQuery<Size>(sql).ToList();
        }
        public List<Hoadon> GetListHoaDon()
        {
            string sql = "select * from hoadon ";
            return mydb.Database.SqlQuery<Hoadon>(sql).ToList();
        }
        public List<ThongTinKhachHang> GetListThongTinKhachHang()
        {
            string sql = "select * from ThongTinKhachHang ";
            return mydb.Database.SqlQuery<ThongTinKhachHang>(sql).ToList();
        }
        public List<ThongTinKhachHang> GetListThongTinKhachHang(int id)
        {
            string sql = "select * from ThongTinKhachHang where id_thongtinkhachhang = '"+id+"'";
            return mydb.Database.SqlQuery<ThongTinKhachHang>(sql).ToList();
        }
        public List<SanPham> GetListSanPham(int id)
        {
            string sql = "select * from sanpham where ID_Sanpham = '"+id+"'";
            return mydb.Database.SqlQuery<SanPham>(sql).ToList();
        }
        public List<SanPham> GetListSanPham()
        {
            string sql = "select * from sanpham ";
            return mydb.Database.SqlQuery<SanPham>(sql).ToList();
        }
        public List<SanPham> Getlist_SanPham()
        {
            string sql = "select * from sanpham where ID_loaiSanPham = N'Hunter Nam'";
            return mydb.Database.SqlQuery<SanPham>(sql).ToList();

        }
        public List<SanPham> GetlistSanPhamBeTrai()
        {
            string sql = "select * from sanpham where ID_loaiSanPham = N'Sandal Bé Trai'";
            return mydb.Database.SqlQuery<SanPham>(sql).ToList();

        }

        public List<SanPham> GetListChiTietSanPham(int ID_SanPham)
        {
            string sql = "select * from sanpham where ID_SanPham = '" + ID_SanPham + "'";
            return mydb.Database.SqlQuery<SanPham>(sql).ToList();
        }

        public List<SanPham> GetlistSanPhamBeGai()
        {
            string sql = "select * from sanpham where ID_loaiSanPham = N'Sandal Bé Gái'";
            return mydb.Database.SqlQuery<SanPham>(sql).ToList();

        }

        public List<SanPham> GetlistSanPhamGosto()
        {
            string sql = "select * from sanpham where ID_loaiSanPham = N'Sandal Nữ'";
            return mydb.Database.SqlQuery<SanPham>(sql).ToList();

        }
        public List<SanPham> GetListSanPhamNu()
        {
            string sql = "select * from sanpham where ID_loaiSanPham = N'Hunter Nữ'";
            return mydb.Database.SqlQuery<SanPham>(sql).ToList();
        }
        public List<SanPham> GetListSanPhamPhuKien()
        {
            string sql = "select * from sanpham where ID_loaiSanPham= N'Phụ Kiện'";
            return mydb.Database.SqlQuery<SanPham>(sql).ToList();
        }
        public List<Size> Getlist_Size(int @ID_sanpham )
        {
            string sql = "select * from Size e, SanPham c where e.ID_SoSize = c.ID_SoSize and  c.ID_SanPham = '"+  @ID_sanpham + "'";
            return mydb.Database.SqlQuery<Size>(sql).ToList();
            
        }
  



    }
}
