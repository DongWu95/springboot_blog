<#assign ctx=request.contextPath />
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<title>个人博客</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="" />
<link rel="stylesheet" href="${ctx}/index.css"/>
<link rel="stylesheet" href="${ctx}/style.css"/>
<link rel="stylesheet" href="${ctx}/css/mplayer.css">
<link rel="stylesheet" href="${ctx}/css/mplayer.css">
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
      <p>还是搞不懂，岁岁年年为了什么。</p>
    </div>
     <!--header end-->
    <!--nav-->
     <div id="nav">
        <ul>
            <li><a href="${ctx}/Myblog/page?pagenum=1" id="nava">我们的故事</a></li>
            <li><a href="${ctx}/Myblog/tech?pagenum=1">技术专区</a></li>
            <li><a href="${ctx}/showResourse">资源专区</a></li>
            <li><a href="${ctx}/Myblog/Shortwords">只言片语</a></li>
            <!--<li><a href="/View/riji.ftl">个人日记</a></li>-->
            <li><a href="${ctx}/View/xc.ftl">相册展示</a></li>
         <div class="clear"></div>
        </ul>
      </div>
       <!--nav end-->
    <!--content start-->
    <div id="content">
         <!--left-->
         <div class="left" id="c_left">
           <div class="s_tuijian">
           <h2><span><a href="${ctx}/Memory">写点啥吧</a></span></h2>
           </div>
          <div class="content_text">
           <!--wz-->


        <#list articlelist as article>

           <div class="wz">
            <h3><a href="${ctx}/fullContent?id=${article.id}" title="浅谈：html5和html的区别">${article.title}</a></h3>
             <dl>
               <dt><img src="${ctx}/s.jpg" width="200"  height="123" alt=""></dt>
               <dd>
                 <p class="dd_text_1">${article.shortText}</p>



               <p class="dd_text_2">
               <span class="left author">${article.author}</span><span class="left sj">${article.datetime}</span>
               <span class="left fl">关键词:<a href="#" title="学无止境">${article.keywords}</a></span><span class="left yd">


                   <a > 评论数:${article.e?size}</a>

               </span>

                   <a href="${ctx}/fullContent?id=${article.id}" title="阅读全文">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;阅读全文</a>
                <div class="clear"></div>
               </p>
               </dd>
               <div class="clear"></div>
             </dl>
            </div>
           <!--wz end-->
            <!--wz-->

        </#list>


              
                             
           </div>
         </div>
         <!--left end-->
         <!--right-->
         <div class="right" id="c_right">
          <div class="s_about">
          <h2>关于我们的故事</h2>


           <p>聊点我们的回忆吧，一辈子不会再有了</p>
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
           <div class="link">
            <h2>友情链接</h2>
            <p><a href=""></a></p>
           </div>
         </div>
         <!--right end-->
         <div class="clear"></div>
    </div>
    <!--content end-->
    <!--footer start-->
    <div id="footer">

        <#if pageNo != 1 >
        <a href ="${ctx}/Myblog/page?pagenum=1"> 首页 </a >

        <a href="${ctx}/Myblog/page?pagenum=${pageNo-1}">上一页</a>



        </#if >

        <#if pageNo != totalPage >


        <a href="${ctx}/Myblog/page?pagenum=${pageNo+1}">下一页</a>
        <a href ="${ctx}/Myblog/page?pagenum=${totalPage}" > 尾页</a >
        </#if >





<!--<p>Design by:<a href="http://www.duanliang920.com" target="_blank">少年</a> 2014-8-9</p>-->
    </div>



    <div class="mp">
        <div class="mp-box">
            <img src="${ctx}/img/mplayer_error.png" alt="music cover" class="mp-cover">
            <div class="mp-info">
                <p class="mp-name">燕归巢</p>
                <p class="mp-singer">许嵩</p>
                <p><span class="mp-time-current">00:00</span>/<span class="mp-time-all">00:00</span></p>
            </div>
            <div class="mp-btn">
                <button class="mp-prev" title="上一首"></button>
                <button class="mp-pause" title="播放"></button>
                <button class="mp-next" title="下一首"></button>
                <button class="mp-mode" title="播放模式"></button>
                <div class="mp-vol">
                    <button class="mp-vol-img" title="静音"></button>
                    <div class="mp-vol-range" data-range_min="0" data-range_max="100" data-cur_min="80">
                        <div class="mp-vol-current"></div>
                        <div class="mp-vol-circle"></div>
                    </div>
                </div>
            </div>
            <div class="mp-pro">
                <div class="mp-pro-current"></div>
            </div>
            <div class="mp-menu">
                <button class="mp-list-toggle"></button>
                <button class="mp-lrc-toggle"></button>
            </div>
        </div>
        <button class="mp-toggle">
            <span class="mp-toggle-img"></span>
        </button>
        <div class="mp-lrc-box">
            <ul class="mp-lrc"></ul>
        </div>
        <button class="mp-lrc-close"></button>
        <div class="mp-list-box">
            <ul class="mp-list-title"></ul>
            <table class="mp-list-table">
                <thead>
                <tr>
                    <th>歌名</th>
                    <th>歌手</th>
                    <th>时长</th>
                </tr>
                </thead>
                <tbody class="mp-list"></tbody>
            </table>
        </div>
    </div>

    <script src="${ctx}/js/jquery.min.js"></script>
    <script src="${ctx}/js/mplayer.js"></script>
    <script src="${ctx}/js/mplayer-list.js"></script>
    <script src="${ctx}/js/mplayer-functions.js"></script>
    <script src="${ctx}/js/jquery.nstSlider.min.js"></script>
    <script src="${ctx}/js/mtjs.js"></script>

    <!--footer end-->
    <script type="text/javascript">jQuery(".lanmubox").slide({easing:"easeOutBounce",delayTime:400});</script>
    <script  type="text/javascript" src="${ctx}/nav.js"></script>
</body>
</html>
