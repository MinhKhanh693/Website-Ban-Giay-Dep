var UpdateAccoutInformation = {
    init: function () {
        UpdateAccoutInformation.regEvents();
    },
    regEvents: function () {
        $("#UpdateButton").off("click").on("click", function () {
            var user = {};
            user.lastName = $("#lastName").val();
            user.firstName = $("#firstName").val();
            user.email = $("#email").val();
            user.DiaChi = $("#DiaChi").val();
            user.NgaySinh = $("#NgaySinh").val();
            user.SDT = $("#SDT").val();
            user.QuocTich = $("#QuocTich").val();
            $.ajax({
                type: "POST",
                url: "/AccountInformation/UpdateAccount",
                data: JSON.stringify(user),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    if (r) {
                        alert("Cập Nhật Thông Tin Khách Hàng Thành Công.");
                    } else {
                        alert("Cập Nhật Thông Tin Khách Hàng Không Thành Công.");
                    }
                }
            });
        });
      
       
    }
}
UpdateAccoutInformation.init();

