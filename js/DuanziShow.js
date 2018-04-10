var page = 0;
var SourseType = "Recommand";
var keyWord = "null";
$(function () {
  
    pageShow();
    page++;
    $(document).on('scroll', scrollListen);
    likeClick();
    collectClick();
    TypeClick();
    SearchClick();
    DeleteNews();
})
function scrollListen() {
            var bottomPadding = $(document).height() - $(document).scrollTop() - $(window).height();
            if (bottomPadding < 50) {
                console.log("SourseType:" + SourseType);
                console.log("keyWord:" + keyWord);
                console.log("page:" + page);
                pageShow();
                DeleteNews();
                page++;
            }
        }

function pageShow() {
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index_duanzi.aspx/getNewsJson',
        async: false,
        data: "{'page':'" + page + "', 'SourseType':'"+ SourseType +"', 'keyWord':'"+ keyWord +"'}",
        dataType: "json",
        success: function (result) {
            var result_true = eval("("+result.d+")");
            var news = result_true['Tables'][0]['Rows'];
            console.log(result);
            $.each(news,function(index, value){
                $('.row').append(
                    '<div class="col-md-6" did="' + value['did'] +'">' +
                        '<div class="panel panel-widget">' +
                            '<div class="panel-title"><a href="view_duanzi.aspx?did=' + value['did'] + '">' + value['dtitle'] + '</a><ul class="panel-tools">' +
                                '<li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>' +
                            '</ul>' +
                            '</div>' +
                            '<div class="panel-body" style="display: block;">' +
                                '<!-- candlestick -->' +
                                    '<div class="candlestick">' +
                                    '<div id="example-8">' +
                                        '<!--<span>资讯内容</span>-->' +
                                            '<div class="content-left"><a href="view_duanzi.aspx?did=' + value['did'] + '">' +
                                            '<img src="' + value['dimage_url'] + '" alt="图片" width="180px" height="120px"></a></div>' +
                                            '<div class="content-right"><a href="view_duanzi.aspx?did=' + value['did'] + '">' + value['dcontent'] + '</a></div>' +
                                        '</div>' +
                                        '<div class="subexample_left">' +
                                            '<div class="duanzi_sort">' + value['dtype'] + '</div>' +
                                            '<div class="reading_capacity_count">' + value['dcount'] + '</div>' +
                                            '<div class="reading_capacity">次浏览</div>' +
                                        '</div>' +
                                        '<div class="subexample_right">' +
                                            '<div class="view_duanzi_collectBox">' +
                                                '<input type="button" class="collect" value="" title="收藏">' +
                                            '</div>' +
                                                '<div class="view_duanzi_likeBox">'+
                                                '<input class="isLikeButton_like" type="button" value=""><div class="index_duanzi_like_count">' + value['dgoods'] + '</div>' +
                                            '</div>' +
                                                '</div>' +
                                            '</div>' +
                                        '</div>' +
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
        var did = jQuery(this).parent().parent().parent().parent().parent().parent().parent().attr('did');
    var number = jQuery(this).children('div').text();
    number = (parseInt(number) + 1).toString();
    jQuery(this).children('div').text(number);
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index_duanzi.aspx/Liking',
        async: true,
        data: "{'did':'" + did + "'}",
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
function collectClick(){
    $(document).on("click", ".collectBox", function(){
        var did = jQuery(this).parent().parent().parent().parent().parent().parent().attr('did');
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index_duanzi.aspx/Collecting',
        async: true,
        data: "{'did':'" + did + "'}",
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

//删除操作
function DeleteNews() {
    $('.panel-tools').children('li').click(function () {
        jQuery(this).parent().parent().parent().parent().remove()
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
                    page++;
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
            page++;
            $(document).on('scroll', scrollListen);

        })
}




















