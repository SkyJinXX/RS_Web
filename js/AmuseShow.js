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
        url: 'index_amuse.aspx/getNewsJson',
        async: false,
        data: "{'page':'" + page + "', 'SourseType':'"+ SourseType +"', 'keyWord':'"+ keyWord +"'}",
        dataType: "json",
        success: function (result) {
            var result_true = eval("("+result.d+")");
            var news = result_true['Tables'][0]['Rows'];
            console.log(result);
            $.each(news,function(index, value){
                $('.row').append(
                    '<div class="col-md-6" aid="' + value['aid'] +'">'+
                    '<div class="panel panel-widget">' +
                    '<div class="panel-title-amuse">' +
                    '<a href="view_amuse.aspx?aid=' + value['aid'] + '"><b>' + value['aname'] + '</b></a>' +
                    '<ul class="panel-tools">' +
                    '<li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>' +
                    '</ul>' +
                    '</div>' +
                    '<div class="panel-body" style="display: block;">' +
                    '<!-- candlestick -->' +
                    '<div class="candlestick">' +
                    '<div id="example-8">' +
                    '<!--<span>资讯内容</span>-->' +
                    '<div class="content-left">' +
                    '<a href="view_amuse.aspx?aid=' + value['aid'] + '">' +
                    '<img src="' + value['aimage_url'] +'" alt="图片" style="width: 210px; height: 140px" /></a>' +
                    '</div>' +
                    '<div class="content-right">' +
                    '<a href="view_amuse.aspx?aid=' + value['aid'] + '">' +
                    '<div class="content-right-line">' +
                    '<div class="first-line-item">' + value['afeature'] + '</div>' +
                    '</div>' +
                    '<div class="content-right-line">' +
                    '<div class="amuse-sort-title">特色</div>' +
                    '<div class="amuse-sort">' + value['atype'] + '</div>' +
                    '</div>' +
                    '<div class="content-right-line-address">' +
                    '<div class="amuse-address-title">地点</div>' +
                    '<div class="amuse-address">' + value['aaddress'] + '</div>' +
                    '</div>' +
                    '<div class="content-right-line">' +
                    '<div class="amuse-time-title">营业时间</div>' +
                    '<div class="amuse-time">' + value['atime'] + '</div>' +
                    '</div>' +
                    '</a>' +
                    '<div class="collectBox">' +
                    '<input type="button" class="collect" value="" title="收藏"/>' +
                    '</div>' +
                    '<div class="likeBox">' +
                    '<input class="isLikeButton_like" type="button" value="" />' +
                    '<div class="like_count">' + value['agoods'] + '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
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
    });
}
function likeClick(){
    $(document).on("click", ".likeBox", function(){
        var aid = jQuery(this).parent().parent().parent().parent().parent().parent().attr('aid');
    var number = jQuery(this).children('div').text();
    number = (parseInt(number) + 1).toString();
    jQuery(this).children('div').text(number);
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index_amuse.aspx/Liking',
        async: true,
        data: "{'aid':'" + aid + "'}",
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
        var aid = jQuery(this).parent().parent().parent().parent().parent().parent().attr('aid');
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index_amuse.aspx/Collecting',
        async: true,
        data: "{'aid':'" + aid + "'}",
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




















