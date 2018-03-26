$(function pageMore() {
    
    function scrollListen() {
        $(document).scroll(function () {
            var bottomPadding = $(document).height() - $(document).scrollTop() - $(window).height();

            if (bottomPadding < 50) {
                pageShow();
                page++;
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
                var result_true = eval("("+result.d+")");
                var news = result_true['Tables'][0]['Rows'];
                $.each(news,function(index, value){
                    $('.InformationList').append(
                        '<div class="InformationItemOutside" Nid="1">' +
                            '<div class="InformationItemInside">' +
                                '<div class="itemLeft">' +
                                    '<img src="img/a2.jpg" data-am-pureviewed="1">' +
                                '</div>' +
                                '<div class="itemRight">' +
                                    '<div class="informationTitle">' +
                                        '<a href="view.aspx" class="ahover">'+value['Ntitle']+'</a>' +
                                    '</div>' +
                                    '<div class="informationContent">' +
                                        '<a href="view.aspx" class="ahover">'+value['Ncontent'] +
                                        '</a>' +
                                    '</div>' +
                                    '<div class="type">' +
                                        value['Ntype'] +
                                    '</div>' +
                                    '<div class="isLikeBox">' +
                                        '<input class="isLikeButton" type="button" name="isLike" value="点赞" />' +
                                        '<input class="isLikeButton" type="button" name="isLike" value="点踩" />' +
                                        '<input class="isLikeButton" type="button" name="isLike" value="收藏" />' +
                                    '</div>' +
                                '</div>' +
                                '<div class="uninterested">' +
                                    '<input class="uninterestedButton" type="button" name="uninterested_Button" value="x" />' +
                                '</div>' +
                            '</div>' +
                        '</div>' 
                    )
                    console.log(value);
                });
            },
            error: function (textStatus, errorThrown) {
                console.log(textStatus);
                console.log(errorThrown);
            }
        });
    }
    var page = 0;
    pageShow();
    page++;
    scrollListen();
})






















