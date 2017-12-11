<#assign ctx=request.contextPath />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>我们的时光</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <!-- Bootstrap styles -->
    <link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">

    <!-- Font-Awesome -->
    <link rel="stylesheet" href="${ctx}/css/font-awesome/css/font-awesome.min.css">

    <!-- Google Webfonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600|PT+Serif:400,400italic' rel='stylesheet' type='text/css'>

    <!-- Styles -->
   <link rel="stylesheet" href="${ctx}/css/style1.css" id="theme-styles">

    <link rel="stylesheet" href="${ctx}/css/mplayer.css">
    <link rel="stylesheet" href="${ctx}/css/mplayer.css">
    <script type="text/javascript" src="${ctx}/jquery1.42.min.js"></script>
    <script type="text/javascript" src="${ctx}/jquery.SuperSlide.2.1.1.js"></script>




    <!--[if lt IE 9]>      
        <script src="${ctx}/js/vendor/google/html5-3.6-respond-1.1.0.min.js"></script>
    <![endif]-->

    
</head>
<body>
    <header>
        <div class="widewrapper masthead">
            <div class="container">
                <a href="#" id="logo">

                    <#--<img src="img/logo.png" alt="clean Blog">-->
                </a>

                <div id="mobile-nav-toggle" class="pull-right">
                    <a href="#" data-toggle="collapse" data-target=".clean-nav .navbar-collapse">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>

                <nav class="pull-right clean-nav">
                    <div class="collapse navbar-collapse">
                        <ul class="nav nav-pills navbar-nav">
                          
                             <li>
                                <a href="${ctx}/Myblog/page?pagenum=1">返回首页</a>
                            </li>

                        </ul>
                    </div>
                </nav>        

            </div>
        </div>

        <div class="widewrapper subheader">
            <div class="container">
                <div class="clean-breadcrumb">
                    <a href="#"></a>
                    <span class="separator"></span>
                    <a href="#"></a>
                    <span class="separator"></span>
                    <a href="#"></a>
                </div>

              
                <div class="clean-searchbox">
                    <form action="#" method="get" accept-charset="utf-8">
                       
                        <input class="searchfield" id="searchbox" type="text" placeholder="Search">
                         <button class="searchbutton" type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </header>

    <div class="widewrapper main">
        <div class="container">
            <div class="row">
                <div class="col-md-8 blog-main">
                    <article class="blog-post">
                        <header>
                           
                           
                        </header>
                        <div class="body">
                            <h1>${article.title}</h1>
                            <div class="meta">
                                <i class="fa fa-user"></i> ${article.author} <i class="fa fa-calendar"></i>${article.datetime}<i class="fa fa-comments"></i><span class="data"><a href="#comments">${comment_num} Comments</a></span>
                            </div>
                            ${article.content}
                        </div>
                    </article>

                    <aside class="social-icons clearfix">
                        <h3>Share on </h3> 
                        <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-google"></i></a>
                    </aside>

                    <aside class="comments" id="comments">
                        <hr>

                        <h2><i class="fa fa-comments"></i> ${comment_num} Comments</h2>

                        <#list commentlist as comment>

                        <article class="comment">
                            <header class="clearfix">
                                <img src="${ctx}/img/avatar.png" alt="A Smart Guy" class="avatar">
                                <div class="meta">
                                    <h3><a href="#">${comment.name}</a></h3>
                                    <span class="date">
                                        ${comment.datetime}
                                    </span>
                                    <span class="separator">

                                    </span>
                                    
                                    <a href="#create-comment" class="reply-link">Reply</a>                
                                </div>
                            </header>
                             <div class="body">
                                ${comment.content}
                            </div>
                        </article>

                       </#list>



                    </aside>

                    <aside class="create-comment" id="create-comment">
                        <hr>    

                        <h2><i class="fa fa-pencil"></i> 添加评论</h2>

                        <form action="${ctx}/Myblog/Comment" method="post" accept-charset="utf-8">
                            <input id="Iname"  type="hidden"  name="articleid"   value=${articleid}></input>

                            <div class="row">
                               
                               
                            </div>

                           

                            <textarea rows="10" name="message" id="comment-body" placeholder="Your Message" class="form-control input-lg"></textarea>

                            <div class="buttons clearfix">
                                <button type="submit" class="btn btn-xlarge btn-clean-one">提交</button>
                            </div>
                        </form>
                    </aside>
                </div>
               
            </div>
        </div>
    </div>

    <footer>
        <div class="widewrapper footer">
            <div class="container">
   
            </div>
        </div>
        <div class="widewrapper copyright">
                Create by 少东 2017-11-09<a target="_blank" href="http://sc.chinaz.com/moban/"></a>
        </div>
    </footer>



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




    <script src="${ctx}/js/jquery.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <script src="${ctx}/js/modernizr.js"></script>

</body>
</html>