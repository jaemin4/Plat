<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>




</head>
<body>
<c:forEach items="${list}" var="y" varStatus="st">    
    <div class="video">
        <a href='javascript:detailView(${y.v_no} , "${y.category1}" , "${y.category2}")'> 
            <div id="video-iframe${y.v_no}"></div>
        </a>
        <div id="video-info">
            <div class="time">
               <span class="video-time" id="v-time${y.v_no}"></span>
            </div>
            <span id="video-text">
            <a href='javascript:detailView(${y.v_no} , "${y.category1}" , "${y.category2}")'>${y.title }</a></span> 
        </div>
    </div>
</c:forEach>

<script>
$.get("https://www.googleapis.com/youtube/v3/videos", {
    part : 'snippet',
    maxResults : 50,
    id : list[st],
    key : 'AIzaSyACiHNLQp0NoZLhAx6u2JbtMGjCp3STK3A'
}, function(data) {
                            
$.each(data.items, function(i, item) {
 thumbnail = item.snippet.thumbnails.medium.url;

    $('#video-iframe${it.v_no}').append('<img id=\"v-img\" src=\"'+thumbnail+'\">');
});                
});

$.get("https://www.googleapis.com/youtube/v3/videos", {
    part : 'contentDetails',
    maxResults : 50,
    id : vid,
    key : 'AIzaSyACiHNLQp0NoZLhAx6u2JbtMGjCp3STK3A'
}, function(data) {
    
    $.each(data.items, function(i, item) {
        duration = item.contentDetails.duration;
    }
});
    
  //API시간 -->HH:MM:SS형태로 변환
    var hourRegex = new RegExp("[0-9]{1,2}H", "gi");
      var minRegex = new RegExp("[0-9]{1,2}M", "gi");
      var secRegex = new RegExp("[0-9]{1,2}S", "gi");
     
      var hour = hourRegex.exec(duration);
      var min = minRegex.exec(duration);
      var sec = secRegex.exec(duration);
      
      if(hour!==null){
          hour = hour.toString().split("H")[0] + ":";
      }else{
          hour = "";
      }
      if(min !==null){
          min = min.toString().split("M")[0];
          if(min.length<2){
           min = "0"+min;
    }
      }else{
          min = "00";
      }
      if(sec !==null){
          sec = sec.toString().split("S")[0];
          if(sec.length<2){
           sec = "0"+sec;
    }
      }else{
          sec = "00";
      }
      duration = hour+min+":"+sec;
     
    $(timeid).append(duration);
</script>

</body>
</html>