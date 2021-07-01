namespace DatabaseProvider.EntityFramework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Hoadon")]
    public partial class Hoadon
    {
        [Key]
        public int ID_HoaDon { get; set; }

        public int? ID_ThongTinKhachHang { get; set; }

        public int? ID_SanPham { get; set; }

        public virtual SanPham SanPham { get; set; }

        public virtual ThongTinKhachHang ThongTinKhachHang { get; set; }
    }
}
