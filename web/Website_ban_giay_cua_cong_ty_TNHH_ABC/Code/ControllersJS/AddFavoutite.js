var Favourite = {
    init: function () {
        Favourite.regEvents();
    },
    regEvents: function () {

        $('.AddFavourite').off('click').on('click', function () {
            var _idSanPham = $("#idSanPham").data('id');
            var id = {};
                id.ID_SanPham = _idSanPham,       
            $.ajax({       
                type: 'POST',
                url: '/ChiTietSanPham/AddFavourite',
                data: JSON.stringify(id), 
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    alert("Đã Thêm Sản Phẩm Thành Công Vào Yêu Thích:");
                }
                
            })
        });
    }
}
Favourite.init();