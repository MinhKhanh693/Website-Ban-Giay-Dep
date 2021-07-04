using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace DatabaseProvider.EntityFramework
{
    public partial class MyModel : DbContext
    {
        public MyModel()
            : base("name=MyModel")
        {
        }

        public virtual DbSet<admin> admins { get; set; }
        public virtual DbSet<GioHang> GioHangs { get; set; }
        public virtual DbSet<Hoadon> Hoadons { get; set; }
        public virtual DbSet<LoaiSanPham> LoaiSanPhams { get; set; }
        public virtual DbSet<SanPham> SanPhams { get; set; }
        public virtual DbSet<Size> Sizes { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<ThongTinKhachHang> ThongTinKhachHangs { get; set; }
        public virtual DbSet<YeuThich> YeuThiches { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<admin>()
                .Property(e => e.username)
                .IsUnicode(false);

            modelBuilder.Entity<admin>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<admin>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.GiaTien)
                .HasPrecision(10, 0);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.Hinh)
                .IsUnicode(false);

            modelBuilder.Entity<ThongTinKhachHang>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<ThongTinKhachHang>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<ThongTinKhachHang>()
                .Property(e => e.SDT)
                .IsUnicode(false);

            modelBuilder.Entity<ThongTinKhachHang>()
                .Property(e => e.QuocTich)
                .IsUnicode(false);
        }
    }
}
