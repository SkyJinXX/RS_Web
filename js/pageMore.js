$(function pageMore() {
    var page = 0;

    function scrollListen() {
        $(document).scroll(function () {
            var bottomPadding = $(document).height() - $(document).scrollTop() - $(window).height();

            if (bottomPadding < 50) {
                pageShow();
                //page++;
            }
        });
    }

    function pageShow() {
        var _url = "?action=pageMore&page=" + page;
        $.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'index.aspx/getNewsJson',
            async: true,
            data: "{'page':'" + page + "'}",
            dataType: "json",
            success: function (result) {
                console.log(result);

                var div = "<div>" + result.d + "</div>";
                $('.InformationList').append(div);
            },
            error: function (textStatus, errorThrown) {
                cosole.log(textStatus);
                console.log(errorThrown);
            }
        });
    }

    scrollListen();
})
