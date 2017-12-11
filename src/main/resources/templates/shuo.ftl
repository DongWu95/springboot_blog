<#assign ctx=request.contextPath />
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<title>只言片语</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="" />
<link rel="stylesheet" href="${ctx}/index.css"/>
<link rel="stylesheet" href="${ctx}/style.css"/>
<script type="text/javascript" src="${ctx}/jquery1.42.min.js"></script>
<script type="text/javascript" src="${ctx}/jquery.SuperSlide.2.1.1.js"></script>
<!--[if lt IE 9]>
<script src="${ctx}/html5.js"></script>
<![endif]-->
</head>

<body>
    <!--header start-->
    <div id="header">
      <h1>430的乌托邦</h1>
      <p>天之涯，地之角，知交半零落。</p>
      <div id="nav">
         <ul>
             <li><a href="${ctx}/Myblog/page?pagenum=1">我们的故事</a></li>
             <li><a href="${ctx}/Myblog/tech?pagenum=1">技术专区</a></li>
             <li><a href="${ctx}/showResourse">资源专区</a></li>
             <li><a href="${ctx}/Myblog/Shortwords">只言片语</a></li>
             <!--<li><a href="/View/riji.ftl">个人日记</a></li>-->
             <li><a href="${ctx}/View/xc.ftl">相册展示</a></li>
         <div class="clear"></div>
        </ul>
      </div>
    </div>
    <!--header end-->
    <!--content start-->
    <div id="say">
     <div class="weizi">
           <div class="wz_text">当前位置：<a href="#"></a><h1>只言片语</h1></div>
           </div>

        <#list wordList as word>
          <ul class="say_box">
                     <div class="sy">
                         <p>${word.content}</p>
                     </div>
                  <span class="dateview">${word.datetime}</span>
                  <span class="Theauthor">${word.author}</span>
          </ul>
        </#list>
     </div>

    <div id="pagefooter">
        <#if pageNo != 1 >
            <a href ="${ctx}/Myblog/Shortwords?pagenum=1"> 首页 </a >

            <a href="${ctx}/Myblog/Shortwords?pagenum=${pageNo-1}">上一页</a>



        </#if >

        <#if pageNo != totalPage >


            <a href="${ctx}/Myblog/Shortwords?pagenum=${pageNo+1}">下一页</a>
            <a href ="${ctx}/Myblog/Shortwords?pagenum=${totalPage}" > 尾页</a >
        </#if >


    </div>
    <!--content end-->
    <!--footer-->


    <div id="comment_form">

        <form action="${ctx}/Myblog/upshort" method="post">
            <div class="form_row">
                <label>写点啥呗</label><br />
                <textarea  name="comment" rows="" cols=""></textarea>
            </div>
            <p style=" margin:0 auto; text-align:center;">
            <input type="submit"  name="Submit" value="提交" class="submit_btn" />
            </p>
        </form>

    </div>






    <!--footer end-->
    <script type="text/javascript">jQuery(".lanmubox").slide({easing:"easeOutBounce",delayTime:400});</script>
    <script  type="text/javascript" src="${ctx}/nav.js"></script>
</body>
</html>
