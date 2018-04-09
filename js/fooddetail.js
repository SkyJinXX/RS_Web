var fid;

$(function () {
    fid = $.getUrlParam('fid');
    messageShow();
    CommentShow()
    likeClick();
    collectClick();
    unlikeClick();
    Button_switch();
    Button_hide();
    Reply();
        CollectionShow();
    getCity();
})



function messageShow() {
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'view_food.aspx/MessageShow',
        data: "{'fid':'" + fid + "'}",
        dataType: "json",
        success: function (result) {
            var res = eval("(" + result.d + ")");
            var news = res['Tables'][0]['Rows'];
            console.log(result);
            $.each(news, function (index, value) {
                $('.message_view').append(
                    '<div class="message_view_food" fid="' + value['fid'] +'">'+
                        '<div class="view_food_title"><b>' + value['fname'] +'</b></div>' +
                        '<div class="view_food_body">' +
                            '<div class="view_food_body_left">' +
                                '<div class="content-left-line">' +
                                    '<div class="view_food_body_item">' + value['feature'] + '</div>' +
                                '</div>' +
                                '<div class="content-left-line">' +
                                    '<div class="view_food_body_title">特色</div>' +
                                    '<div class="view_food_body_sort">' + value['ftype'] + '</div>' +
                                '</div>' +
                                '<div class="content-left-line">' +
                                    '<div class="view_food_body_phone_title">电话</div>' +
                                    '<div class="view_food_body_phone">' + value['fphone'] + '</div>' +
                                '</div>' +
                                '<div class="content-left-line-address">' +
                                    '<div class="view_food_body_address_title">地点</div>' +
                                    '<div class="view_food_body_address">' + value['faddress'] + '</div>' +
                                '</div>' +
                                '<div class="content-left-line">' +
                                    '<div class="view_food_body_time_title">营业时间</div>' +
                                    '<div class="view_food_body_time">' + value['ftime'] + '</div>' +
                                '</div>' +
                                '<div class="content-left-menu">' +
                                    '<div class="view_food_body_dish_title">推荐菜</div>' +
                                    '<div class="view_food_body_dish">' + value['fsign'] + '</div>' +
                                '</div>' +
                            '</div>' +
                            '<div class="view_food_body_right">' +
                                '<img src="' + value['fimage_url'] +'" alt="图片" style="width: 320px; height: 213px"/>' +
                            '</div>' +
                            '<div class="article_bottom_food">' +
                            '<div class="collectBox">' +
                                '<input type="button" class="collect" value="" title="收藏"/>' +
                            '</div>' +
                            '<div class="likeBox">' +
                                '<input class="isLikeButton_like" type="button" value="" />' +
                                '<div class="like_count">' + value['fgoods'] + '</div>' +
                            '</div>' +
                            '<div class="unlikeBox">' +
                                '<input class="isLikeButton_dislike" type="button" value="" />' +
                                '<div class="unlike_count">' + value['fbads'] + '</div>' +
                            '</div>' +
                            '</div>' +
                        '</div>' +
                        '<div class="clearfloat"></div>' +
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
        url: 'view_food.aspx/CommentShow',
        success: function (result) {
            var res = eval("(" + result.d + ")");
            var news = res['Tables'][0]['Rows'];
            console.log(result);
            $.each(news, function (index, value) {
                if (value["Tourl"] == "" || value["Tourl"] == null || value["Toname"] == null || value["Toname"] == "" || value["Toname"] == " ") {
                    $('.comment_area').append(
                        '<div fid="' + value['Id'] + '">' +
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
                        '<input class="comment_box_bottom_button" id="Button_Reply" type="button" value="回复" />' +
                        '</div>' +
                        '<div class="replyContent">' +
                        '<input class="comment_box_bottom_text" type="text" style="display:none"/>' +
                        '<input class="comment_box_bottom_confirm" type="Button" style="display:none" value="确定"/>' +
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
                        '<div fid="' + value['Id'] + '">' +
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
                        '<input class="comment_box_bottom_button" id="Button_Reply" type="button" value="回复" />' +
                        '</div>' +
                        '<div class="replyContent">' +
                        '<input class="comment_box_bottom_text" type="text" style="display:none"/>' +
                        '<input class="comment_box_bottom_confirm" type="Button" style="display:none" value="确定"/>' +
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

function Button_hide(){
    $(".fold-button").click(function () {
        $(".comment_area").slideToggle("fast");
        $(".open_Button").toggle();
        $(".close_Button").toggle();
    });
}

function Button_switch() {
    $(document).on("click", ".replyButton", function () {
        if (jQuery(this).children('.comment_box_bottom_button').val() == "回复") {
            jQuery(this).children('.comment_box_bottom_button').val("取消");
            jQuery(this).parent().children('.replyContent').children('.comment_box_bottom_text').css('display', 'block');
            jQuery(this).parent().children('.replyContent').children('.comment_box_bottom_confirm').css('display', 'block');
        }
        else {
            jQuery(this).children('.comment_box_bottom_button').val("回复");
            jQuery(this).parent().children('.replyContent').children('.comment_box_bottom_text').css('display', 'none');
            jQuery(this).parent().children('.replyContent').children('.comment_box_bottom_confirm').css('display', 'none');
        }
    });
}

function likeClick() {
    $(document).on("click", ".likeBox", function () {
        var fid = jQuery(this).parent().parent().parent().attr('fid');
        var number = jQuery(this).children('div').text();
        number = (parseInt(number) + 1).toString();
        jQuery(this).children('div').text(number);
        $.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'view_food.aspx/Liking',
            async: true,
            data: "{'fid':'" + fid + "'}",
            dataType: "json",
            success: function (result) {
                //alert("点赞+1");
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
        var fid = jQuery(this).parent().parent().parent().attr('fid');
        var number = jQuery(this).children('div').text();
        number = (parseInt(number) + 1).toString();
        jQuery(this).children('div').text(number);
        $.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'view_food.aspx/Disliking',
            async: true,
            data: "{'fid':'" + fid + "'}",
            dataType: "json",
            success: function (result) {
                //alert("点踩+1");
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
        var fid = jQuery(this).parent().parent().parent().attr('fid');
        $.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'view_food.aspx/Collecting',
            async: true,
            data: "{'fid':'" + fid + "'}",
            dataType: "json",
            success: function (result) {
                alert("成功收藏");
            },
            error: function (textStatus, errorThrown) {
                console.log(textStatus);
                console.log(errorThrown);
            }
        });
    });
}

function Reply() {
    $(document).on("click", ".replyContent", function () {
        
        $(".comment_box_bottom_confirm").click(function () {
            var id = jQuery(this).parent().parent().parent().parent().attr('fid');
            var Con = jQuery(this).parent().children('.comment_box_bottom_text').val();
            console.log(id);

            if (Con == null || Con == "") {
                alert("评论内容不能为空");
            }
            else {
                $.ajax({
                    type: 'post',
                    contentType: "application/json",
                    url: 'view_food.aspx/Replying',
                    async: true,
                    data: "{'id':'" + id + "','Con':'" + Con + "'}",
                    dataType: "json",
                    success: function (result) {
                        alert("评论成功");
                    },
                    error: function (textStatus, errorThrown) {
                        console.log(textStatus);
                        console.log(errorThrown);
                    }
                });
                jQuery(this).parent().parent().children('.replyButton').children('.comment_box_bottom_button').val("回复");
                jQuery(this).parent().children('.comment_box_bottom_text').css('display', 'none');
                jQuery(this).css('display', 'none');
                $('.comment_area').empty();
                CommentShow();
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
function CollectionShow() {
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'Collection.aspx/getNewsJson',
        async: false,
        data: "{'page':'0', 'SourseType':'"+ SourseType +"', 'keyWord':'"+ keyWord +"'}",
        dataType: "json",
        success: function (result) {
            var result_true = eval("("+result.d+")");
            var news = result_true['Tables'][0]['Rows'];
            console.log(news);
            $.each(news,function(index, value){
                $('#collection_menu').append(
                    '<li>'+
                        '<a href="#">'+
                            '<div class="task-info">'+
                                '<span class="task-desc">'+
                                value['Ntitle']+
                                '</span>'+
                                '<div class="clearfix"></div>'+
                            '</div>'+
                        '</a>'+
                    '</li>'
                );
            });
            $('#collection_menu').append(
                '<li>'+
                '<div class="notification_bottom">'+
                '<a href="interests.aspx">个人收藏</a>'+
                '</div>'+
                '</li>'
                );
        },
        error: function (textStatus, errorThrown) {
            console.log(textStatus);
            console.log(errorThrown);
        }
    });
}
function getCity(){
    var province = '' ;  
    var city = '' ;  
    jQuery.getScript("http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js",function(){  
       province = remote_ip_info["province"];  
       city = remote_ip_info["city"];  
       $('.location').text(province+" "+city);  
   }) ;   
}