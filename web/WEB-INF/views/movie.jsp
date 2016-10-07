<%--
  Created by IntelliJ IDEA.
  User: zipon
  Date: 2016/10/6
  Time: 23:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--<html>
<head>
    <script src="//cdn.bootcss.com/jquery/3.1.1/jquery.js"></script>
    <link href="//cdn.bootcss.com/tether/1.3.6/css/tether.min.css" rel="stylesheet">
    <script src="//cdn.bootcss.com/tether/1.3.6/js/tether.min.js"></script>
    <script src="//cdn.bootcss.com/angular.js/1.5.8/angular.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/4.0.0-alpha.3/js/bootstrap.js"></script>
    <link href="//cdn.bootcss.com/bootstrap/4.0.0-alpha.3/css/bootstrap.css" rel="stylesheet">
    <script src="resources/js/app.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>movie</title>
</head>
<body ng-app="myapp" ng-controller="getFilms">
12312{{names}}
    <ul class="nav nav-pills" role="tablist">
        <li role="presentation" class="active"><a href="#">电影</a></li>
        <li role="presentation"><a href="#">音乐</a></li>
        <li role="presentation"><a href="#">电视剧</a></li>
    </ul>
    <div class="row">
        <div>

        </div>
    </div>
</body>
<script>

</script>
</html>
-->
<!--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>结合 CSS3 & jQuery 实现精致的 3D 图库</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="resources/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/style.css" />
    <link rel="stylesheet" href="http://www.yyyweb.com/demo/common/init.css">
    <style>
        body {
            margin-top: 25px;
        }
        .top-banner {
            background-color: #666;
        }
    </style>
    <script type="text/javascript" src="resources/js/modernizr.custom.53451.js"></script>
</head>
<body>
<div class="container">
    <header>
        <nav class="codrops-demos">
            <a class="current-demo" href="/movie">Navigation</a>
            <a href="index2.html">Auto-Slideshow</a>
            <a href="index3.html">3 Elements</a>
        </nav>
    </header>
    <section id="dg-container" class="dg-container">
        <div class="dg-wrapper">
            <a href="#"><img src="resources\images\1.jpg" alt="image01"><div>http://www.colazionedamichy.it/</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image02"><div>http://www.percivalclo.com/</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image03"><div>http://www.wanda.net/fr</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image04"><div>http://lifeingreenville.com/</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image05"><div>http://circlemeetups.com/</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image06"><div>http://www.castirondesign.com/</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image07"><div>http://www.foundrycollective.com/</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image08"><div>http://www.mathiassterner.com/home</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image09"><div>http://learnlakenona.com/</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image10"><div>http://www.neighborhood-studio.com/</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image11"><div>http://www.beckindesign.com/</div></a>
            <a href="#"><img src="resources\images\1.jpg" alt="image12"><div>http://kicksend.com/</div></a>
        </div>
        <nav>
            <span class="dg-prev">&lt;</span>
            <span class="dg-next">&gt;</span>
        </nav>
    </section>
</div>
<div class="footer-banner" style="width:728px; margin:-40px auto"></div>
<script src="http://www.yyyweb.com/demo/common/jquery.min.js"></script>
<script src="http://www.yyyweb.com/demo/common/init.js"></script>
<script type="text/javascript" src="resources/js/jquery.gallery.js"></script>
<script type="text/javascript">
    $(function() {
        $('#dg-container').gallery();
    });
</script>
</body>
</html>
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>movie-zipon电影坊</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="margin:0 20%;background-color: rgb(143, 143, 189);">
<div class="row">
    <div class="col-md-offset-10">
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active" style="text-align: center;margin: auto auto">
            <img src="resources\images\1.jpg" alt="First slide">
        </div>
        <div class="item">
            <img src="resources\images\2.jpg" alt="Second slide">
        </div>
        <div class="item">
            <img src="resources\images\3.jpg" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel"
       data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next">&rsaquo;</a>
</div>
    </div>
</div>
</body>
</html>
