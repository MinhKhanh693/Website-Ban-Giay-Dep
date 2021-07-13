var search = {
    init: function () {
        search.regEvents();
    },
    regEvents: function () {

        $('.buttonSearch').off('click').on('click', function () {
            var str = $(".textSearch").val();
            $.ajax({
                url: "",
                data: { keyword: str },
                dataType: 'html',
                type: 'POST',
                success: function (res) {
                    if (res.status == undefined || res.status == false) {
                        window.location.assign("/Search?keyword=" + str);
                    }
                }
            })
        });
    }
}
search.init();