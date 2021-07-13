var Favourite = {
    init: function () {
        Favourite.regEvents();
    },
    regEvents: function () {

        $('.Delelt-Cart').off('click').on('click', function () {
            var _idYeuThich = $(this).data('id');
            var id = {};
            id.ID_YeuThich = _idYeuThich,
                $.ajax({
                    type: 'POST',
                    url: '/Favourite/DeleteFavourite',
                    data: JSON.stringify(id),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        alert("Xóa Thành Công Sản Phẩm :");

                    },
                    error: function () {
                        alert("Xóa Không Thành Công Sản Phẩm :");
                    }
                })
        });
    }
}
Favourite.init();
