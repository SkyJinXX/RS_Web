$(function () {

    messageShow();
    likeClick();
    collectClick();
    unlikeClick();

})

function messageShow() {
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'view.aspx/MessageShow',
        success: function (result) {
            var res = eval("(" + result.d + ")");
            var news = res['Tables'][0]['Rows'];
            console.log(result);
            $.each(news, function (index, value) {
                $('.message_view').append(
                    '<div class="artcle_title">' + value['Ntitle'] +
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
function likeClick() {
    $(document).on("click", ".likeBox", function () {
        var Nid = jQuery(this).parent().parent().parent().parent().parent().attr('Nid');
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
        var Nid = jQuery(this).parent().parent().parent().parent().parent().attr('Nid');
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
        var Nid = jQuery(this).parent().parent().parent().parent().parent().attr('Nid');
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