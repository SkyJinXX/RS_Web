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
                    $('.InformationList').append(
                        '<div class="InformationItemOutside">' +
                            '<div class="InformationItemInside" Nid="'+value['Nid']+'">' +
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
                                        '<div class = "likeBox">' +
                                            '<img src="/img/good.png" width="25" height="25">'+'<p>'+ value['Ngoods'] +'</p>' +
                                        '</div>' +
                                        '<div class = "unlikeBox">' +
                                            '<img src="/img/bad.png" width="25" height="25">'+'<p>'+ value['Nbads'] +'</p>' +
                                        '</div>' +
                                        '<div class = "collectBox">' +
                                            '<button type="button" class="isLikeButton" id = "collectButton">' + '收藏' + '</button>' +
                                        '</div>' +
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
    function likeClick(){
    	$(document).on("click", ".likeBox", function(){
        var Nid = jQuery(this).parent().parent().parent().attr('Nid');
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
            	alert('成功点赞');
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
        var Nid = jQuery(this).parent().parent().parent().attr('Nid');
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
        var Nid = jQuery(this).parent().parent().parent().attr('Nid');
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























