﻿var page = 0;
var SourseType = "Recommand";
var keyWord = "null";

$(function () {
  
    demoShow_News();
    demoShow_Food();
    demoShow_Amuse();
    demoShow_Duan();
    //SearchClick();
    //getCity();
})


function demoShow_News() {
    $.ajax({
        type: 'post',
        contentType: "application/json",
        url: 'index_News.aspx/getNewsJson',
        async: false,
        data: "{'page':'" + page + "', 'SourseType':'"+ SourseType +"', 'keyWord':'"+ keyWord +"'}",
        dataType: "json",
        success: function (result) {
            var result_true = eval("("+result.d+")");
            var news = result_true['Tables'][0]['Rows'];
            //console.log(result);
            $.each(news,function(index, value){
                $('#placeholder').append(
                    '<div class="home_brief_message">'+
                        '<a href="#">'+
                        '<div class="brief_message_img">'+
                            '<img src="'+value['Nimage_url']+'" alt="图片" style="width: 105px; height: 70px;" />'+
                        '</div>'+
                        '<div class="brief_message">'+
                            value['Ntitle']+
                        '</div>'+
                    '</a>'+
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
function demoShow_Food() {
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
            //console.log(result);
            $.each(news,function(index, value){
                $('#placeholder1').append(
                    '<div class="home_brief_message">'+
                        '<a href="#">'+
                        '<div class="brief_message_img">'+
                            '<img src="'+value['fimage_url']+'" alt="图片" style="width: 105px; height: 70px;" />'+
                        '</div>'+
                        '<div class="brief_message">'+
                            value['fname']+
                        '</div>'+
                    '</a>'+
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
function demoShow_Amuse() {
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
                $('#placeholder2').append(
                    '<div class="home_brief_message">'+
                        '<a href="#">'+
                        '<div class="brief_message_img">'+
                            '<img src="'+value['aimage_url']+'" alt="图片" style="width: 105px; height: 70px;" />'+
                        '</div>'+
                        '<div class="brief_message">'+
                            value['aname']+
                        '</div>'+
                    '</a>'+
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
function demoShow_Duan() {
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
                $('#placeholder3').append(
                    '<div class="home_brief_message">'+
                        '<a href="#">'+
                        '<div class="brief_message_img">'+
                            '<img src="'+value['dimage_url']+'" alt="图片" style="width: 105px; height: 70px;" />'+
                        '</div>'+
                        '<div class="brief_message">'+
                            value['dtitle']+
                        '</div>'+
                    '</a>'+
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
function getCity(){
    var province = '' ;  
    var city = '' ;  
    jQuery.getScript("http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js",function(){  
       province = remote_ip_info["province"];  
       city = remote_ip_info["city"];  
       $('.username').append('</br>'+ province + ' ' + city);  
   }) ;   
}


















