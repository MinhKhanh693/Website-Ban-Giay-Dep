using DatabaseProvider.EntityFramework;
using System;


namespace DatabaseIO
{
    [Serializable]
    public class CartItem
    { 
        public SanPham SanPham { get; set; }
        public int quanlity { get; set; }
    }
}