var page = 0;
var SourseType = "Recommand";
var keyWord = "null";
$(function () {
  
    pageShow();
    page++;
    $(document).on('scroll', scrollListen);
    likeClick();
    unlikeClick();
    collectClick();
    TypeClick();
    SearchClick();
})
function scrollListen() {
            var bottomPadding = $(document).height() - $(document).scrollTop() - $(window).height();
            if (bottomPadding < 50) {
                console.log("SourseType:" + SourseType);
                console.log("keyWord:" + keyWord);
                console.log("page:" + page);
                pageShow();
                page++;
            }
        }

function pageShow() {
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index.aspx/getNewsJson',
        async: false,
        data: "{'page':'" + page + "', 'SourseType':'"+ SourseType +"', 'keyWord':'"+ keyWord +"'}",
        dataType: "json",
        success: function (result) {
            var result_true = eval("("+result.d+")");
            var news = result_true['Tables'][0]['Rows'];
            console.log(result);
            $.each(news,function(index, value){
                $('.row').append(
                    '<div class="col-md-6" Nid="' + value['Nid'] +'">'+
                        '<div class="panel panel-widget">'+
                            '<div class="panel-title">'+
                                value['Ntitle']+
                                '<ul class="panel-tools">'+
                                    '<li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>'+
                                '</ul>'+
                            '</div>'+
                            '<div class="panel-body" style="display: block;">'+
                                '<!-- candlestick -->'+
                                '<div class="candlestick">'+
                                   '<div id="example-8">'+
                                        '<!--<span>资讯内容</span>-->'+
                                        '<div class="content-left">'+
                                            '<img src="'+ value['Nimage_url'] + '" alt="图片" width = "180px" height="120px">'+
                                        '</div>'+
                                        '<div class="content-right">'+
                                            '<a href="view.aspx">'+
                                                value['Ncontent']+
                                            '</a>'+
                                        '</div>'+
                                    '</div>'+
                                    '<div class="sort">'+
                                        value['Ntype']+
                                    '</div>'+
                                    '<div class="isLikeButton">'+
                                        '<div class="collectBox">'+
                                            '<input type="button" class="collect" value="" title="收藏"/>'+
                                        '</div>'+
                                        '<div class="likeBox">'+
                                            '<input class="isLikeButton_like" type="button" value="" />'+
                                            '<div class="like_count">' + value['Ngoods'] + '</div>'+
                                        '</div>'+
                                        '<div class="unlikeBox">'+
                                            '<input class="isLikeButton_dislike" type="button" value="" />'+
                                            '<div class="unlike_count">' + value['Nbads'] + '</div>'+
                                        '</div>'+
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                        '</div>'+
                    '</div>'
                );
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
    var number = jQuery(this).children('div').text();
    number = (parseInt(number) + 1).toString();
    jQuery(this).children('div').text(number);
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index.aspx/Liking',
        async: true,
        data: "{'nid':'" + Nid + "'}",
        dataType: "json",
        success: function (result) {
            console.log("点赞+1");
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
    var number = jQuery(this).children('div').text();
    number = (parseInt(number) + 1).toString();
    jQuery(this).children('div').text(number);
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index.aspx/Disliking',
        async: true,
        data: "{'nid':'" + Nid + "'}",
        dataType: "json",
        success: function (result) {
            console.log("点踩+1");
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
            conlose.log("成功收藏");
        },
        error: function (textStatus, errorThrown) {
            console.log(textStatus);
            console.log(errorThrown);
        }
    });
});
}

function TypeClick(){
    $('#typeUl').children('li').each(
        function(index, value){
            $(value).children('a').children('b').click(
                function(){
                    keyWord = $(this).text();
                    page = 0;
                    SourseType = "Type";
                    $('.row').empty();
                    $(document).off('scroll', scrollListen);
                    pageShow();
                    $(document).on('scroll', scrollListen);
                    //console.log(keyWord);                                                 
                });            
        }
    )
}
function SearchClick(){
    $('#searchButton').click(
        function(){
            keyWord = $('#searchText').val();
            
            page = 0;
            SourseType = "Search";
            
            $('.row').empty();
            //console.log(page);
            $(document).off('scroll', scrollListen);
            pageShow();
            $(document).on('scroll', scrollListen);

        })
}





















