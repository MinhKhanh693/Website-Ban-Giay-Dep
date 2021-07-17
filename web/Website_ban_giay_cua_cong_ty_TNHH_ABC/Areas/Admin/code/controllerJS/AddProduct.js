var Product = {
    init: function () {
        Product.regEvents();
    },
    regEvents: function () {

        //Add Product
        $('#btnUpdateAdmin').off('click').on('click', function () {
            var check = confirm("Bạn có cách chắn với điều này")
            if (check)
            {
                var _tenSanPham = $("#TenSanPhamAdmin").val();
                var _loaiSanPham = $("#LoaiSanPhamAdmin").val();
                var _GiaTien = $("#GiaTienSanPhamAdmin").val();
                var _Mau = $("#MauSanPhamAdmin").val();
                var _soSize = $("#SoSizeSanPhamAdmin").val();
                var _hinh = $("#SoSizeSanPhamAdmin").val();;
                var id = {};
                id.ID_SanPham = 'Null',
                id.TenSanPham = _tenSanPham,
                id.GiaTien = _GiaTien,
                id.ID_loaiSanPham = _loaiSanPham,
                id.ID_SoSize = _soSize,
                id.Mau = _Mau,
                id.Hinh = _hinh,
                    $.ajax({
                        type: 'POST',
                        url: '/ProductAdmin/AddProduct',
                        data: JSON.stringify(id),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (r) {
                            if(r) {
                                alert("Đã Thêm Sản Phẩm Thành Công Vào Cơ sở dữ liệu:");
                                window.location.href = "/ProductAdmin"
                            }                       
                        }
                    })
           }            
        });
        //Update Product
        $('#btnEditProductAdmin').off('click').on('click', function () {
            var check = confirm("Bạn có cách chắn với điều này")
            if (check) {
                var _tenSanPham = $("#TenSanPhamAdmin").val();
                var _loaiSanPham = $("#LoaiSanPhamAdmin").val();
                var _GiaTien = $("#GiaTienSanPhamAdmin").val();
                var _Mau = $("#MauSanPhamAdmin").val();
                var _soSize = $("#SoSizeSanPhamAdmin").val();
                var _hinh = $("#HinhSanPhamAdmin").val();
                var _idSanPham = $("#btnEditProductAdmin").data('id');
                var id = {};
                id.ID_SanPham = _idSanPham,
                id.TenSanPham = _tenSanPham,
                id.GiaTien = _GiaTien,
                id.ID_loaiSanPham = _loaiSanPham,
                id.ID_SoSize = _soSize,
                id.Mau = _Mau,
                id.Hinh = _hinh,
                    $.ajax({
                        type: 'POST',
                        url: '/ProductAdmin/EditProduct',
                        data: JSON.stringify(id),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (r) {
                            if (r) {
                                alert("Đã Cập Nhật Sản Phẩm Thành Công Vào Cơ sở dữ liệu:");
                                window.location.href = "/ProductAdmin"
                            }
                           
                        }

                    })
            }
        });
        //Delete Product
        $('#btnDeleteProductAdmin').off('click').on('click', function () {
            var check = confirm("Bạn có chắc chắn với điều này ");
            if (check) {
                var _id = $('#btnDeleteProductAdmin').data('id');
                var id = {};
                id.ID_SanPham = _id;
                $.ajax({
                    type: 'POST',
                    url: '/ProductAdmin/DeleteProduct',
                    data: JSON.stringify(id),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        if (r) {
                            alert("Đã Xóa Sản Phẩm Thành Công Khỏi Cơ sở dữ liệu:");
                            window.location.href ="/ProductAdmin"
                        }                         
                         else
                            alert("Xóa Sản Phẩm Thất Bại Vui !!! Lòng Kiểm Tra Ràng Buộc Của Sản Phẩm Với Các Trường khác Trong Cở Sở Dữ Liệu:");
                    }

                })
            }
           
        });


    }
}
Product.init();