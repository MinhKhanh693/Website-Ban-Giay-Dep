var Account = {
    init: function () {
        Account.regEvents();
    },
    regEvents: function () {

      
        //Update Account
        $('.btnEditUserAdmin').off('click').on('click', function () {
            var check = confirm("Bạn có cách chắn với điều này")
            if (check) {
                var _email = $("#EmailUserAdmin").val();
                var _password = $("#PasswordUserAdmin").val();
                var _ho = $("#FirstNameUserAdmin").val();
                var _ten = $("#LastNameUserAdmin").val();
                var _phone = $("#PhoneUserAdmin").val();
                var _NgaySinh = $("#DateOfBirthUserAdmin").val();
                var _quoctich = $("#NationalityUserAdmin").val();
                var _diachi = $("#AddressUserAdmin").val();
                var _idthongtinkhachang = $(".btnEditUserAdmin").data('id');
                var id = {};
                id.ID_ThongTinKhachHang = _idthongtinkhachang,
                id.Email = _email,
                id.password = _password,
                id.FirstName = _ho,
                    id.lastName = _ten,
                    id.SDT = _phone,
                    id.NgaySinh = _NgaySinh,
                    id.DiaChi = _diachi,
                    id.QuocTich = _quoctich,
                    $.ajax({
                        type: 'POST',
                        url: '/AccountManagement/EditAccount',
                        data: JSON.stringify(id),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (r) {
                            if (r) {
                                alert("Đã Cập Nhật Tài Khoản Thành Công Vào Cơ sở dữ liệu:");
                                window.location.href = "/AccoutManagement"
                            }
                                                         
                        }

                    })
            }
        });
        //Delete Account
        $('#btnEditUserAdmin').off('click').on('click', function () {
            var check = confirm("Bạn có chắc chắn với điều này ");
            if (check) {
                var _id = $('#btnEditUserAdmin').data('id');
                var id = {};
                id.ID_ThongTinKhachHang = _id;
                $.ajax({
                    type: 'POST',
                    url: '/AccountManagement/DeleteAccount',
                    data: JSON.stringify(id),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        if (r) {
                            alert("Đã Xóa Tài Khoản Thành Công Khỏi Cơ sở dữ liệu:");
                            window.location.href = "/AccoutManagement"
                        }
                        else
                            alert("Xóa Tài Khoản Thất Bại Vui !!! Lòng Kiểm Tra Ràng Buộc Của Tài Khoản Với Các Trường khác Trong Cở Sở Dữ Liệu:");
                    }

                })
            }

        });


    }
}
Account.init();