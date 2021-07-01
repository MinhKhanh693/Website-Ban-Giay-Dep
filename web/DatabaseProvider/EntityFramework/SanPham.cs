namespace DatabaseProvider.EntityFramework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SanPham")]
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            GioHangs = new HashSet<GioHang>();
            Hoadons = new HashSet<Hoadon>();
            YeuThiches = new HashSet<YeuThich>();
        }

        [Key]
        public int ID_SanPham { get; set; }

        [StringLength(80)]
        public string TenSanPham { get; set; }

        public decimal? GiaTien { get; set; }

        [StringLength(50)]
        public string ID_loaiSanPham { get; set; }

        public int? ID_SoSize { get; set; }

        [StringLength(255)]
        public string Hinh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GioHang> GioHangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Hoadon> Hoadons { get; set; }

        public virtual LoaiSanPham LoaiSanPham { get; set; }

        public virtual Size Size { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<YeuThich> YeuThiches { get; set; }
    }
}
