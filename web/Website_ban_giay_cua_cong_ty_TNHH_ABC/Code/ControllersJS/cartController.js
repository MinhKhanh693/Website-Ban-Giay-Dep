var Cart = {
    init: function () {
        Cart.regEvents();
    },
    regEvents: function () {

        $('.Update-Cart').off('click').on('click', function () {
            var listProduct = $('.textQuanlity');
            var cartList = [];
            $.each(listProduct, function (i, item) {
                cartList.push({
                    quanlity: $(item).val(),
                    SanPham: {
                        ID_SanPham: $(item).data('id')
                    }
                });
            });

            $.ajax({
                url: '/Cart/Update',
                data: { cartModel: JSON.stringify(cartList) },
                dataType: 'json',
                type: 'POST',
                success: function (res) {
                    if (res.status == true) {
                        window.location.href = "/Cart";
                    }
                }
            })
        });


        $('.Delelt-Cart').off('click').on('click', function () {       
            var id = $(this).data('id');
            $.ajax({
                data: { ID_SanPham: id },
                url: '/Cart/Delete',
                dataType: 'json',
                type: 'POST',
                success: function (res) {
                    if (res.status == true) {
                        window.location.href = "/Cart";
                    }
                }
            })
        });
    }
}
Cart.init();

