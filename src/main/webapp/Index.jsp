<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>${title }</title>
    <meta name="keywords" content=${title }/>
    <meta name="description" content=${title }>
    <meta name="siteBaseUrl" content="http://www.changs1992.cn/"/>
    <meta id="mobileView" name="viewport"
          content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0, minimum-scale=1, maximum-scale=1,"/>
    <link rel="shortcut icon" href="http://my-photos.changs1992.cn/bitbug_favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="http://www.pniao.com/View/style/mov.css?v=19"/>
    <script type="text/javascript" src="http://www.pniao.com/Plugin/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="http://www.pniao.com/Plugin/movCommonxxx.js?v=19"></script>
</head>
<body>


<div id="container" class="container marginTop">
    <div class="mainContainer">
        <div class="mainBox movieFlag movieOne" id="movieFlag8121">
            <div class="midSoForm">
                <%--<div class="movieSoForm leftSoForm soFormWidth">--%>
                    <%--<form method="get" id="soMovieForm" action="http://www.changs1992.cn/wechat/so">--%>
                        <%--<a href="javascript:;"></a>--%>
                        <%--<div class="left">--%>
                            <%--<div class="leftInnner input">--%>
                                <%--<input type="text" id="movieSoWord" name="name" value="" inColor="#666"--%>
                                       <%--outColor="#aaa"/>--%>
                                <%--<div class="soTipDiv" id="soTipDiv"></div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="right">--%>
                            <%--<div id="exactlyBtn" class="btn menuBtn"><a href="javascript:;"></a></div>--%>
                            <%--<div class="popMenu popStyle_2 exactlySoMenu">--%>
                                <%--<div class="arrowBg"></div>--%>
                                <%--<div class="inner">--%>
                                    <%--<ul><a href="javascript:;" type="title_">标题</a></ul>--%>
                                    <%--<ul><a href="javascript:;" type="actors">演员</a></ul>--%>
                                    <%--<ul><a href="javascript:;" type="director">导演</a></ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div id="movieSoBtn" class="btn subBtn">--%>
                                <%--<input type="submit" value="Submit">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</form>--%>
                <%--</div>--%>
                <%--<div class="rightFilter" id="filterMovieBtn">--%>
                    <%--<a title="高级筛选" href="javascript:;">高级筛选</a>--%>
                <%--</div>--%>
                <div class="clear"></div>

                <div class="multiSoContainer" id="multiSoContainer">
                </div>
            </div>
            <div class="mainBox_border">
                <div class="movTitle">
                    <li class="mainTitle"> ${title }</li>
                    <li> [蓝光720p/1080p]</li>
                </div>
                <div class="movInfoOuter">
                    ${movInfoOuter }
                </div>
                <div class="mobile_thumb"></div>
                <div class="clear"></div>
                <%--<div class="trailer">--%>
                    <%--<a rel="nofollow" target="blank"--%>
                       <%--href="https://movie.douban.com/trailer/201980/">&Delta;&nbsp;观看预告片</a>--%>
                <%--</div>--%>

                <div class="clear"></div>
                <div class="bshare-custom icon-medium">
                    <a title="分享到新浪微博" class="bshare-sinaminiblog"></a>
                    <a title="分享到豆瓣" class="bshare-douban"></a>
                    <a title="分享到微信" class="bshare-weixin"></a>
                    <a title="分享到QQ好友" class="bshare-qqim" href="javascript:void(0);"></a>
                    <a title="分享到QQ空间" class="bshare-qzone"></a>
                </div>
                <div class="clear"></div>
                <div class="briefOuter">
                    <div class="briefTitle">简介</div>
                    <div class="briefCnt">
                        ${descb }</div>
                </div>
            </div>
        </DIV>
        <!---/movieOne--->
        <!---/siderBar--->
        <div class="mainBox downUrlDiv">

        </div>
        <!---/downUrlDiv--->
        <div class="clear"></div>
        ${detail }
        <!---/mcommentContainer--->
    </div>
    <div class="clear"></div>

    <div id="goTopBox" class="goTopBox ieFloat">
        <a title="返回顶部" href="javascript:;">&uarr;<br/>top</a>
    </div>
</div>

<div class="siderCnt supportUs">
    <img width="120px" height="120px" alt="支持我们" src="http://my-photos.changs1992.cn/%E6%9C%AA%E6%A0%87%E9%A2%98-2.png">
</div>


<script type="text/javascript" charset="utf-8">
    $().ready(function () {
        $('#mcommentWordsCount').text(trim($('#mcommentArea').val()).length + '/200字');
        $('#mcommentArea').keyup(function () {
            $('#mcommentMsg').text('');
            $('#mcommentWordsCount').text(trim($(this).val()).length + '/200字');
        })
    })
</script>
<script type="text/javascript" charset="utf-8"
        src="https://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
<script type="text/javascript" charset="utf-8" src="https://static.bshare.cn/b/bshareC0.js"></script>

<script>
    $().ready(function () {
        if ($('.orginSrc').length > 0) $.getScript(appPath + '/Plugin/jquery-scrollLoading.js', function () {
            $(".orginSrc").scrollLoading({});
        });
    });
</script>

<div class="hideDiv">
    <script src="https://s13.cnzz.com/z_stat.php?id=1269092814&web_id=1269092814" language="JavaScript"></script>
</div>
</body>
</html>