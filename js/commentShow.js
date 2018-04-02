var Nid;

$(function () {
    Nid = $.getUrlParam('Nid');
    messageShow();
    CommentShow()
    likeClick();
    collectClick();
    unlikeClick();
    Reply();

})



function messageShow() {
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'view.aspx/MessageShow',
        data: "{'nid':'" + Nid + "'}",
        dataType: "json",
        success: function (result) {
            var res = eval("(" + result.d + ")");
            var news = res['Tables'][0]['Rows'];
            console.log(result);
            $.each(news, function (index, value) {
                $('.message_view').append(
                    '<div Nid="' + value['Nid'] + '">' +
                    '<div class="artcle_title" Nid="' + value['Nid'] + '">' + value['Ntitle'] +
                    '</div >' +
                    '<div class="subtitle">' +
                    '<div class="subtitleClassification_box">' + value['Ntype'] +
                    '</div>' +
                    '<div class="subtitleTime_box">' + value['Ntime'] +
                    '</div >' +
                    '</div >' +
                    '<div class="picture">' +
                    '<img src="' + value['Nimage_url'] + '"/>' +
                    '</div>' +
                    '<div class="article">' +
                    '<p id="content">' + value['Ncontent'] + '</p>' +
                    '</div>' +
                    '<div class="article_bottom">' +
                    '<div class="collectBox">' +
                    '<input type="button" class="collect" value="" title="收藏"/>' +
                    '</div>' +
                    '<div class="likeBox">' +
                    '<input class="isLikeButton_like" type="button" value="">' +
                    '<div class="like_count">' + value['Ngoods'] + '</div>' +
                    '</div>' +
                    '<div class="unlikeBox">' +
                    '<input class="isLikeButton_dislike" type="button" value="">' +
                    '<div class="unlike_count">' + value['Nbads'] + '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>'
                );
            });
        },
        error: function (textStatus, errorThrown) {
            console.log(textStatus);
            console.log(errorThrown);
        }
    })
}



function ColExp() {
    $(document).on("click", ".comment_area_title", function () {
        $(this).parent().slideToggle();
    });
}

function CommentShow() {
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'view.aspx/CommentShow',
        success: function (result) {
            var res = eval("(" + result.d + ")");
            var news = res['Tables'][0]['Rows'];
            console.log(result);
            $.each(news, function (index, value) {
                if (value["Tourl"] == "" || value["Tourl"] == null || value["Toname"] == null || value["Toname"] == "" || value["Toname"] == " ") {
                    $('.comment_area').append(
                        '<div Nid="' + value['Id'] + '">' +
                        '<div class="comment_box_double">' +
                        '<div class="comment_box_title">' +
                        '<img src="' + value["Fromurl"] + '" style="float:left" />' +
                        '<div class="name">' +
                        value['Fromname'] +
                        '</div>' +

                        '</div>' +
                        '<div class="comment_box_article">' +
                        '<p class="content">' + value['Content'] + '</p>' +
                        '</div>' +
                        '<div class="comment_box_bottom">' +
                        '<div class="fa_img">' +
                        '<i class="fa fa-reply"></i>' +
                        '</div>' +
                        '<div class="replyButton">' +
                        '<button class="comment_box_bottom_button" type="button">回复</button>' +
                        '</div>' +
                        '<div class="fa_img">' +
                        '<i class="fa fa-flag"></i>' +
                        '</div>' +
                        '<div class="reportButton">' +
                        '<button class="comment_box_bottom_button" type="button">举报</button>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</div>'
                    );
                }
                else {
                    $('.comment_area').append(
                        '<div Nid="' + value['Id'] + '">' +
                        '<div class="comment_box_double">' +
                        '<div class="comment_box_title">' +
                        '<img src="' + value["Fromurl"] + '" style="float:left" />' +
                        '<div class="name">' +
                        value['Fromname'] +
                        '</div>' +

                        '<div class="reply">回复</div>' +
                        '<img src="' + value["Tourl"] + '" style="float:left" />' +
                        '<div class="name">' +
                        value['Toname'] +
                        '</div>' +
                        '</div>' +
                        '<div class="comment_box_article">' +
                        '<p class="content">' + value['Content'] + '</p>' +
                        '</div>' +
                        '<div class="comment_box_bottom">' +
                        '<div class="fa_img">' +
                        '<i class="fa fa-reply"></i>' +
                        '</div>' +
                        '<div class="replyButton">' +
                        '<button class="comment_box_bottom_button" type="button">回复</button>' +
                        '</div>' +
                        '<div class="fa_img">' +
                        '<i class="fa fa-flag"></i>' +
                        '</div>' +
                        '<div class="reportButton">' +
                        '<button class="comment_box_bottom_button" type="button">举报</button>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</div>'
                    );
                }
            });
        },
        error: function (textStatus, errorThrown) {
            console.log(textStatus);
            console.log(errorThrown);
        }
    })
}

function likeClick() {
    $(document).on("click", ".likeBox", function () {
        var Nid = jQuery(this).parent().parent().attr('Nid');
        var number = jQuery(this).children('div').text();
        number = (parseInt(number) + 1).toString();
        jQuery(this).children('div').text(number);
        $.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'view.aspx/Liking',
            async: true,
            data: "{'nid':'" + Nid + "'}",
            dataType: "json",
            success: function (result) {
                alert('成功点赞');
            },
            error: function (textStatus, errorThrown) {
                console.log(textStatus);
                console.log(errorThrown);
            }
        });
    });
}
function unlikeClick() {
    $(document).on("click", ".unlikeBox", function () {
        var Nid = jQuery(this).parent().parent().attr('Nid');
        var number = jQuery(this).children('div').text();
        number = (parseInt(number) + 1).toString();
        jQuery(this).children('div').text(number);
        $.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'view.aspx/Disliking',
            async: true,
            data: "{'nid':'" + Nid + "'}",
            dataType: "json",
            success: function (result) {
                alert('成功点踩');
            },
            error: function (textStatus, errorThrown) {
                console.log(textStatus);
                console.log(errorThrown);
            }
        });
    });
}
function collectClick() {
    $(document).on("click", ".collectBox", function () {
        var Nid = jQuery(this).parent().parent().attr('Nid');
        $.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'view.aspx/Collecting',
            async: true,
            data: "{'nid':'" + Nid + "'}",
            dataType: "json",
            success: function (result) {
                alert('成功收藏');
            },
            error: function (textStatus, errorThrown) {
                console.log(textStatus);
                console.log(errorThrown);
            }
        });
    });
}

function Reply() {
    $(document).on("click", ".replyButton", function () {
        var id = jQuery(this).parent().parent().parent().attr('Id');
        $.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'view.aspx/Replying',
            async: true,
            data: "{'id':'" + id + "'}",
            dataType: "json",
            success: function (result) {
                alert('成功收藏');
            },
            error: function (textStatus, errorThrown) {
                console.log(textStatus);
                console.log(errorThrown);
            }
        });
    });
}

(function ($) {
    $.getUrlParam = function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }
})(jQuery);
