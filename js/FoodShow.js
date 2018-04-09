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
        CollectionShow();
    getCity();
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
        url: 'index_food.aspx/getNewsJson',
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
                    '<div class="panel panel-widget">' +
                    '<div class="panel-title-food">' +
                    '<a href="view_food.aspx?fid=' + value['fid'] + '">' +
                    '<b>' + value['fname'] +'</b ></a > ' +
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
                    '<a href="view_food.aspx?fid=' + value['fid'] + '"><img src="' + value['fimage_url'] +'" alt="图片" style="width: 210px; height: 140px" /></a>' +
                    '</div>' +
                    '<div class="content-right">' +
                    '<a  href="view_food.aspx?fid=' + value['fid'] + '">' +
                    '<div class="content-right-line">' +
                    '<div class="first-line-item">' + value['feature'] + '</div>' +
                    '</div>' +
                    '<div class="content-right-line">' +
                    '<div class="food-sort-title">特色</div>' +
                    '<div class="food-sort">' + value['ftype'] + '</div>' +
                    '</div>' +
                    '<div class="content-right-line-address">' +
                    '<div class="food-address-title">地点</div>' +
                    '<div class="food-address">' + value['faddress'] + '</div>' +
                    '</div>' +
                    '<div class="content-right-line">' +
                    '<div class="food-time-title">营业时间</div>' +
                    '<div class="food-time">' + value['ftime'] + '</div>' +
                    '</div>' +
                    '</a>' +
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
        var fid = jQuery(this).parent().parent().parent().parent().parent().parent().attr('fid');
        console.log(fid);
    var number = jQuery(this).children('div').text();
    number = (parseInt(number) + 1).toString();
    jQuery(this).children('div').text(number);
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index_food.aspx/Liking',
        async: true,
        data: "{'fid':'" + fid + "'}",
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
        var fid = jQuery(this).parent().parent().parent().parent().parent().parent().attr('fid');
    var number = jQuery(this).children('div').text();
    number = (parseInt(number) + 1).toString();
    jQuery(this).children('div').text(number);
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index_food.aspx/Disliking',
        async: true,
        data: "{'fid':'" + fid + "'}",
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
function collectClick(){
    $(document).on("click", ".collectBox", function(){
        var fid = jQuery(this).parent().parent().parent().parent().parent().parent().attr('fid');
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index_food.aspx/Collecting',
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



















