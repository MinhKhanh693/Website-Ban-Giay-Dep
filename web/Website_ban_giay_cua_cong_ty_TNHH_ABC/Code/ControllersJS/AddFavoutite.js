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
        //Lưu toàn bộ id sản phẩm yêu thích 
        var IDs = [];
        $(".Table-Cart").find("#ID-SanPham-Favourite").each(function () { IDs.push($(this).data('id')) });
        //Chuyển tiếp giỏ hàng
        $('#AddCart').off('click').on('click', function () {
            for(var i = 0; i < IDs.length; i++){
            $.ajax({
                type: 'POST',
                url: '/Cart/AddItem?ID_SanPham=' + IDs[i],
                dataType: "hmtl",
                success: function () {     
                }
            });
                 if (i == IDs.length-1) {
                    alert("Đang chuyển tiếp giỏ hàng... ");
                    window.location.href = "/Cart";
                }
            }
            
        });
    }
}
Favourite.init();