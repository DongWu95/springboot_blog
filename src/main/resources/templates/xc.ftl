<#assign ctx=request.contextPath />
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<title>相册展示-个人博客</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="" />
<link rel="stylesheet" href="${ctx}/index.css"/>
<link rel="stylesheet" href="${ctx}/style.css"/>
<script type="text/javascript" src="${ctx}/jquery1.42.min.js"></script>
<script type="text/javascript" src="${ctx}/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="${ctx}/common.js"></script>
<script type="text/javascript" src="${ctx}/waterfall.js" ></script>
<!--[if lt IE 9]>
<script src="${ctx}/html5.js"></script>
<![endif]-->
</head>

<body>
    <!--header start-->
    <div id="header">
      <h1>430的乌托邦</h1>
      <p>青春是打开了,就合不上的书。人生是踏上了，就回不了头的路，爱情是扔出了，就收不回的赌注。</p>
      <div id="nav">
        <ul>
         <li><a href="${ctx}/Myblog/page?pagenum=1">我们的故事</a></li>
            <li><a href="${ctx}/Myblog/tech?pagenum=1">技术专区</a></li>
            <li><a href="${ctx}/showResourse">资源专区</a></li>
            <li><a href="${ctx}/Myblog/Shortwords">只言片语</a></li>
         <!--<li><a href="/View/riji.ftl">个人日记</a></li>-->
         <li><a href="${ctx}/View/xc.ftl">相册展示</a></li>
         <!--<li><a href="/View/learn.ftl">学无止境</a></li>-->

         <div class="clear"></div>
        </ul>
      </div>
    </div>
    <!--header end-->
    <!--content start-->
    <div id="content_xc">
         <div class="weizi">
           <div class="wz_text">当前位置：<a href="#"></a><h1>相册展示</h1></div>
         </div>
         <div class="xc_content">
          <div class="con-bg">
              <div class="w960 mt_10">
               <div class="w650">
                <ul class="tips" id="wf-main" style="display:none" >
                        <li class="wf-cld"><img src="http://120.24.249.135/image/2.png"  width="200" height="178" alt="" /></li>
                        <li class="wf-cld"><img src="http://120.24.249.135/image/11.png" height="247" width="200" alt="" /></li>
                        <li class="wf-cld"><img src="http://120.24.249.135/image/3.png"  width="200" height="267" alt="" /></li>
                        <li class="wf-cld"><img src="http://120.24.249.135/image/4.png"  width="200" height="125" alt="" /></li>


                        <li class="wf-cld"><img src="http://120.24.249.135/image/66.jpg" width="247" height="267" alt="" /></li>
                        <li class="wf-cld"><img src="http://120.24.249.135/image/12.jpg" width="200" height="235" alt="" /></li>
                        <li class="wf-cld"><img src="http://120.24.249.135/image/15.jpg"  width="200" height="300" alt="" /></li>
                        <li class="wf-cld"><img src="http://120.24.249.135/image/16.jpg"  width="200" height="207" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/17.jpg"  width="200" height="178" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/18.jpg" height="147" width="200" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/19.jpg"  width="200" height="267" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/20.jpg"  width="200" height="225" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/21.jpg" width="200" height="299" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/22.jpg" width="200" height="225" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/23.jpg" width="200" height="267"alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/24.jpg" width="200" height="235" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/25.jpg"  width="200" height="300" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/26.jpg"  width="200" height="207" alt="" /></li>
                        <li class="wf-cld"><img rel="lazy" lazy_src="http://120.24.249.135/image/27.JPG"  width="200" height="267" alt="" /></li>

                    </ul>
               </div>
             </div>
           </div>
         </div>
    </div>
    <!--content end-->
  <!--footer-->
    <div id="footer">
     <p>Design by:少东 2017-11-08</p>
    </div>
    <!--footer end-->
    <script type="text/javascript">jQuery(".lanmubox").slide({easing:"easeOutBounce",delayTime:400});</script>
    <script  type="text/javascript" src="${ctx}/nav.js"></script>
     <script>

    var timer, m = 0, m1 = $("img[rel='lazy']").length;

    function fade() {

        $("img[rel='lazy']").each(function () {

            var $scroTop = $(this).offset();

            if ($scroTop.top <= $(window).scrollTop() + $(window).height()) {

                $(this).hide();

                $(this).attr("src", $(this).attr("lazy_src"));

                $(this).attr("top", $scroTop.top);

                $(this).removeAttr("rel");

                $(this).removeAttr("lazy_src");

                $(this).fadeIn(600);

                var _left = $(this).parent().parent().attr("_left");

                if (_left != undefined)

                    $(this).parent().parent().animate({ left: _left }, 400);

                m++;

            }

        });

        if (m < m1) { timer = window.setTimeout(fade, 300); }

        else { window.clearTimeout(timer); }

    }

    $(function () {

        $("#wf-main img[rel='lazy']").each(function (i) {

            var _left = $(this).parent().parent().css("left").replace("px", "");

            $(this).parent().parent().attr("_left", _left);

            $(this).parent().parent().css("left", 0);

        });

        fade();

    });

    $(".loading").hide();

    $("#wf-main").show();

</script>	
</body>
</html>