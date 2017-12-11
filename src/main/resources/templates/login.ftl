<#assign ctx=request.contextPath />
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <title>我们的时光</title>
    <meta name="keywords" content="网站模板,手机网站模板,手机登录页面,登录页面HTML,免费网站模板下载" />
    <meta name="description" content="JS代码网提供高质量手机网站模板下载" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel="stylesheet" href="${ctx}/css/reset.css">
    <link rel="stylesheet" href="${ctx}/css/supersized.css">
    <link rel="stylesheet" href="${ctx}/css/style.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>

<div class="page-container">
    <h1>难忘我们当年的故事，那是我们永远的回忆</h1>
    <form action="${ctx}/Login" method="post">
    <br>
    <br>
    <br>
    <input type="text" name="username" class="username" placeholder="你的名字">

    <input  type="hidden" name="password" class="password" value="110">

    <button type="submit">提交</button>
    <div class="error"><span></span></div>
</form>
    <div class="connect">


    </div>
</div>

<!-- Javascript -->
<script src="${ctx}/js/jquery-1.8.2.min.js"></script>
<script src="${ctx}/js/supersized.3.2.7.min.js"></script>
<script src="${ctx}/js/supersized-init.js"></script>
<script src="${ctx}/js/scripts.js"></script>
<script>var ctx="${ctx}"</script>
</body>

</html>


