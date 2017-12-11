<#assign ctx=request.contextPath />
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<title>个人日记-个人博客</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="" />
<link rel="stylesheet" href="${ctx}/index.css"/>
<link rel="stylesheet" href="${ctx}/style.css"/>
<link rel="stylesheet" href="${ctx}/animate.css"/>
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
      <p>嘴上一句带过心里却一直重复。</p>
    </div>
     <!--header end-->
    <!--nav-->
     <div id="nav">
        <ul>
            <li><a href="${ctx}/Myblog/page?pagenum=1">我们的故事</a></li>
            <li><a href="${ctx}/Myblog/tech?pagenum=1">技术专区</a></li>
            <li><a href="${ctx}/showResourse">资源专区</a></li>
            <li><a href="${ctx}/Myblog/Shortwords">只言片语</a></li>
            <!--<li><a href="/View/riji.html">个人日记</a></li>-->
            <li><a href="${ctx}/View/xc.ftl">相册展示</a></li>
         <div class="clear"></div>
        </ul>
      </div>
       <!--nav end-->
    <!--content start-->
    <div id="content">
       <!--left-->
         <div class="left" id="riji">
           <div class="weizi">
           <div class="wz_text"><a href="${ctx}/Myupload">有啥好资源<a href="#"></a><h1></h1></div>
           </div>
           <div class="rj_content">
                <!--时光-->

               <#list resourselist as resourse>
              <div class="shiguang animated bounceIn">
                <div class="left sg_ico">
                <img src="http://120.24.249.135/image/2.jpg" width="120" height="120" alt=""/>
                </div>
                <div class="right sg_text">
                <img src="${ctx}/left.png" width="13" height="16" alt="左图标"/>
                    <a href="${ctx}/download?filename=${resourse.title}">
                        ${resourse.title}
                    </a>
                    <br>
                    <br>
                    <br>
                    <br>


                    ${resourse.author} &nbsp;
                    ${resourse.datetime}
                </div>
                <div class="clear"></div>
              </div>
              <!--时光 end-->
                 <!--时光-->
              </#list>

              <!--时光 end-->
              
           </div>
         </div>
         <!--end left -->
         <!--right-->
          <div class="right" id="c_right">
          <div class="s_about">
          <h2>关于资源专区</h2>

           <p>兄弟们有啥好的资源都可以上传到这个区，百无禁忌</p>

           <p>

           <div class="clear"></div>
           </p>
          </div>
          <!--栏目分类-->
           <div class="lanmubox">
              <div class="hd">
               <ul><li>精心推荐</li><li>最新文章</li><li class="hd_3">随机文章</li></ul>
              </div>
              <div class="bd">
                <ul>

				</ul>
                 <ul>

				</ul>
                 <ul>

				</ul>
                 
                
              </div>
           </div>
           <!--end-->
         </div>
         <!--end  right-->
         <div class="clear"></div>
         
    </div>
    <!--content end-->
    <!--footer-->
    <div id="footer">
        <#if pageNo != 1 >
            <a href ="${ctx}/showResourse?pagenum=1"> 首页 </a >

            <a href="${ctx}/showResourse?pagenum=${pageNo-1}">上一页</a>



        </#if >

        <#if pageNo != totalPage >


            <a href="${ctx}/showResourse?pagenum=${pageNo+1}">下一页</a>
            <a href ="${ctx}/showResourse?pagenum=${totalPage}" > 尾页</a >
        </#if >
    </div>
    <!--footer end-->
    <script type="text/javascript">jQuery(".lanmubox").slide({easing:"easeOutBounce",delayTime:400});</script>
    <script  type="text/javascript" src="${ctx}/nav.js"></script>
</body>
</html>

