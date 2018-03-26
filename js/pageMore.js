$(function () {
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
                    $('.row').append(
                        '<div class="col-md-6" Nid="' + value['Nid'] +'">'+
                            '<div class="panel panel-widget">'+
                                '<div class="panel-title">'+
                                    value['Ntitle']+
                                    '<ul class="panel-tools">'+
                                        '<li><a class="icon minimise-tool"><i class="fa fa-minus"></i></a></li>'+
                                        '<li><a class="icon expand-tool"><i class="fa fa-expand"></i></a></li>'+
                                        '<li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>'+
                                    '</ul>'+
                                '</div>'+
                                '<div class="panel-body" style="display: block;">'+
                                    '<!-- candlestick -->'+
                                    '<div class="candlestick">'+
                                       '<div id="example-8">'+
                                            '<!--<span>资讯内容</span>-->'+
                                            '<div class="content-left">'+
                                                '图片'+
                                            '</div>'+
                                            '<div class="content-right">'+
                                                '<a href="#">'+
                                                    value['Ncontent']+
                                                '</a>'+
                                            '</div>'+
                                        '</div>'+
                                        '<div class="sort">'+
                                            value['Ntype']+
                                        '</div>'+
                                        '<div class="isLikeButton">'+
                                            '<div class="collectBox">'+
                                                '<input type="button" class="collect" value="收藏" />'+
                                            '</div>'+
                                            '<div class="likeBox">'+
                                                '<input class="isLikeButton_like" type="button" value="" />'+
                                                '<p>' + value['Ngoods'] + '</p>'+
                                            '</div>'+
                                            '<div class="unlikeBox">'+
                                                '<input class="isLikeButton_dislike" type="button" value="" />'+
                                                '<p>' + value['Nbads'] + '</p>'+
                                            '</div>'+
                                        '</div>'+
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                        '</div>'
                    );
                    console.log(value);
                });
            },
            error: function (textStatus, errorThrown) {
                console.log(textStatus);
                console.log(errorThrown);
            }
        });
    }
    function likeClick(){
    	$(document).on("click", ".likeBox", function(){
        var Nid = jQuery(this).parent().parent().parent().parent().parent().attr('Nid');
        var number = jQuery(this).children('p').text();
        number = (parseInt(number) + 1).toString();
        jQuery(this).children('p').text(number);
        $.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'index.aspx/Liking',
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
    function unlikeClick(){
    	$(document).on("click", ".unlikeBox", function(){
        var Nid = jQuery(this).parent().parent().parent().parent().parent().attr('Nid');
        var number = jQuery(this).children('p').text();
        number = (parseInt(number) + 1).toString();
        jQuery(this).children('p').text(number);
		$.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'index.aspx/Disliking',
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
    function collectClick(){
    	$(document).on("click", ".collectBox", function(){
        var Nid = jQuery(this).parent().parent().parent().parent().parent().attr('Nid');
        $.ajax({
            type: 'post',
            contentType: "application/json",
            url: 'index.aspx/Collecting',
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

    var page = 0;
    pageShow();
    page++;
    scrollListen();
    likeClick();
    unlikeClick();
    collectClick();

})























