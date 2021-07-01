namespace DatabaseProvider.EntityFramework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThongTinKhachHang")]
    public partial class ThongTinKhachHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ThongTinKhachHang()
        {
            GioHangs = new HashSet<GioHang>();
            Hoadons = new HashSet<Hoadon>();
            YeuThiches = new HashSet<YeuThich>();
        }

        [Key]
        public int ID_ThongTinKhachHang { get; set; }

        [Required]
        [StringLength(45)]
        public string username { get; set; }

        [Required]
        [StringLength(45)]
        public string password { get; set; }

        [Required]
        [StringLength(80)]
        public string ermail { get; set; }

        [StringLength(45)]
        public string firstName { get; set; }

        [StringLength(45)]
        public string lastName { get; set; }

        [StringLength(12)]
        public string SDT { get; set; }

        [StringLength(250)]
        public string DiaChi { get; set; }

        [StringLength(45)]
        public string QuocTich { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GioHang> GioHangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Hoadon> Hoadons { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<YeuThich> YeuThiches { get; set; }
    }
}
