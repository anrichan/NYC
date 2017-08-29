
    $('#star').raty({
    size     : 26,
    starOff: '/assets/images/rate/star_w.png',
    starOn : '/assets/images/rate/star_y.png',
    scoreName: 'review[rate]' 
    });

//     $(function(){
//      // 設定
// var $width =800; // 横幅
// var $height =400; // 高さ
// var $interval = 4000; // 切り替わりの間隔（ミリ秒）
// var $fade_speed = 3000; // フェード処理の早さ（ミリ秒）
// $("#slide ul li").css({"position":"relative","overflow":"hidden","width":$width,"height":$height});
// $("#slide ul li").hide().css({"position":"absolute","top":0,"left":0});
// $("#slide ul li:first").addClass("active").show();
// setInterval(function(){
// var $active = $("#slide ul li.active");
// var $next = $active.next("li").length?$active.next("li"):$("#slide ul li:first");
// $active.fadeOut($fade_speed).removeClass("active");
// $next.fadeIn($fade_speed).addClass("active");
// },$interval);
// });

$(function(){
  $(window).load(function(){
    //=================================================
    //  ユーザー設定
    var divID = 'slideshow'
    var fadeTime = 2000;
    var fadeTimeLast = 5000;
    var switchTime = 3500;
    //=================================================
    var objDiv = document.getElementById(divID);
    if (!objDiv){return;}
    var objImg = objDiv.getElementsByTagName('img');
    objDiv.style.visibility = 'visible';
    imgChange(objImg, fadeTime, fadeTimeLast, switchTime, 0);
  });
  function imgChange(objImg, fadeTime, fadeTimeLast, switchTime, cnt){
    if (cnt == 0){
      if (objImg.length == 0){return;}  //画像がない時
      $(objImg).css({opacity:'0'});
      $(objImg[cnt]).stop().animate({opacity:'1'},fadeTime);
      if (objImg.length == 1){return;}  //1枚だけの時
    } else if ((cnt == objImg.length - 1) && (objImg.length > 1)){
      for (i = 0; i <= 1; i++){$(objImg[(cnt - 1) + i]).stop().animate({opacity:i},fadeTimeLast);}
      return;
    } else {
      for (i = 0; i <= 1; i++){$(objImg[(cnt - 1) + i]).stop().animate({opacity:i},fadeTime);}
    }
    cnt++;
    setTimeout(function(){imgChange(objImg, fadeTime, fadeTimeLast, switchTime, cnt);},switchTime);
  };
});