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
        url: 'food.aspx/getNewsJson',
        async: false,
        data: "{'page':'" + page + "', 'SourseType':'"+ SourseType +"', 'keyWord':'"+ keyWord +"'}",
        dataType: "json",
        success: function (result) {
            var result_true = eval("("+result.d+")");
            var news = result_true['Tables'][0]['Rows'];
            console.log(result);
            $.each(news,function(index, value){
                $('.row').append(
                    '<div class="col-md-6" fid="' + value['fid'] +'">'+
                        '<div class="panel panel-widget">'+
                            '<div class="panel-title">' + '<a href="view_food.aspx?fid=' + value['fid'] + '">' +
                                value['fname'] + '</a>' +
                                '<ul class="panel-tools">'+
                                    '<li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>'+
                                '</ul>'+
                            '</div>'+
                            '<div class="panel-body" style="display: block;">'+
                                '<!-- candlestick -->'+
                                '<div class="candlestick">'+
                                   '<div id="example-8">'+
                                       
                                        '<div class="content-left">'+
                                            '<a href="view_food.aspx?fid=' + value['fid'] + '">' + '<img src="' + value['fimage_url'] + '" alt="图片" width = "240px" height="150px">' + '</a>' +
                                        '</div>'+
                                        '<div class="content-right">'+
                                            '<div>' + value['feature'] + '</div> <br />' +
                                            '<div>' + value['ftype'] + '</div > ' +
                                            '<div>' + value['faddress'] + '</div > <br />' +
                                            '<div>' + value['ftime'] + '</div> <br />' +
                                        '</div>'+
                                    '</div>'+
                                    '<div class="sort">'+
                                        value['ftype']+
                                    '</div>'+
                                    '<div class="isLikeButton">'+
                                        '<div class="collectBox">'+
                                            '<input type="button" class="collect" value="" title="收藏"/>'+
                                        '</div>'+
                                        '<div class="likeBox">'+
                                            '<input class="isLikeButton_like" type="button" value="" />'+
                                            '<div class="like_count">' + value['fgoods'] + '</div>'+
                                        '</div>'+
                                        '<div class="unlikeBox">'+
                                            '<input class="isLikeButton_dislike" type="button" value="" />'+
                                            '<div class="unlike_count">' + value['fbads'] + '</div>'+
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
    var fid = jQuery(this).parent().parent().parent().parent().parent().attr('fid');
    var number = jQuery(this).children('div').text();
    number = (parseInt(number) + 1).toString();
    jQuery(this).children('div').text(number);
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'food.aspx/Liking',
        async: true,
        data: "{'fid':'" + fid + "'}",
        dataType: "json",
        success: function (result) {
            alert("点赞+1");
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
    var fid = jQuery(this).parent().parent().parent().parent().parent().attr('fid');
    var number = jQuery(this).children('div').text();
    number = (parseInt(number) + 1).toString();
    jQuery(this).children('div').text(number);
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'food.aspx/Disliking',
        async: true,
        data: "{'fid':'" + fid + "'}",
        dataType: "json",
        success: function (result) {
            alert("点踩+1");
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
    var fid = jQuery(this).parent().parent().parent().parent().parent().attr('fid');
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'food.aspx/Collecting',
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




















