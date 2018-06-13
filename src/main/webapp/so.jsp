<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title> 影范电影 最新中英字幕电影美剧下载 热门电影推荐</title>
    <meta name="siteBaseUrl" content="http://www.changs1992.cn/"/>
    <meta id="mobileView" name="viewport"
          content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0, minimum-scale=1, maximum-scale=1,"/>
    <link rel="shortcut icon" href="http://my-photos.changs1992.cn/bitbug_favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="http://www.pniao.com/View/style/mov.css?v=19"/>
    <script type="text/javascript" src="http://www.pniao.com/Plugin/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="http://www.pniao.com/Plugin/movCommonxxx.js?v=19"></script>


</head>
<body>
<div class="movies">
    <c:forEach items="${list}" var="user">

        <div class="movieFlag eachOne" id="movieFlag45615">
            <div class="title">
                <li><a target="_blank" href=${user.code}>${user.title}</a></li>
            </div>
            <div class="movInfo">
                <div class="right">
                    <div class="rightInnner">
                        <div class="briefBox">
                            <div class="briefInner">
                                <%--<div class="brief">${user.descb}</div>--%>
                            </div>
                        </div>
                        <div class="info">
                                ${user.info_html}

                        </div>
                        <!---info--->
                    </div>
                </div>
                <!---right--->
                <div class="left">
                    <div class="thumb">
                        <a target="_blank" href=${user.code}>
                            <img alt=${user.title} class="orginSrc" data-url=${user.img1} src=${user.img1}>
                        </a>
                    </div>
                </div>
                <!---left--->
            </div>
            <!---movInfo--->
            <div class="movActs">
                <div class="acts">

                </div>
            </div>
        </div>
    </c:forEach>

</div>


<div class="siderCnt supportUs">
    <img width="120px" height="120px" alt="支持我们" src="http://my-photos.changs1992.cn/%E6%9C%AA%E6%A0%87%E9%A2%98-2.png">
</div>

<script>
    $().ready(function () {
        if ($('.orginSrc').length > 0) $.getScript(appPath + '/Plugin/jquery-scrollLoading.js', function () {
            $(".orginSrc").scrollLoading({});
        });
    });
</script>
<div id="goTopBox" class="goTopBox ieFloat">
    <a title="返回顶部" href="javascript:;">&uarr;<br/>top</a>
</div>
</div>


</body>
</html>