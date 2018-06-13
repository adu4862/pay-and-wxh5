<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/10
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> 影范电影 最新中英字幕电影美剧下载 热门电影推荐</title>
    <meta name="keywords" content="中英字幕电影，中文字幕电影，最新美剧，最新高清电影下载，百度网盘电影，磁力电影下载"/>
    <meta name="description" content="影范电影 -每日更新最新中文字幕电影，剧集，动漫，纪录片，分享高清电影下载，百度网盘电影，磁力电影下载，盘点热门电影合集。">
    <meta name="siteBaseUrl" content="http://www.pniao.com"/>
    <meta id="mobileView" name="viewport"
          content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0, minimum-scale=1, maximum-scale=1,"/>
    <link rel="shortcut icon" href="http://my-photos.changs1992.cn/bitbug_favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="http://www.pniao.com/View/style/mov.css"/>
    <script type="text/javascript" src="http://www.pniao.com/Plugin/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="http://www.pniao.com/Plugin/movCommon.min.js"></script>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
        (adsbygoogle = window.adsbygoogle || []).push({
            google_ad_client: "ca-pub-1900874537947892",
            enable_page_level_ads: true
        });
    </script>
</head>
<body>
<div id="container" class="container">

    <div class="mob_header">
        <div class="mob_top">
            <div id="soMovForm" class="soMovForm" action="http://www.pniao.com/Mov/so/">
                <a href="javascript:;"></a>
                <div class="left">
                    <div class="leftInnner input">
                        <input type="text" id="movSoWord" name="movSoWord" value="" inColor="#555" outColor="#999"
                               autocomplete="off"/>
                        <div class="soTipDiv" id="soTipDiv"></div>
                    </div>
                </div>
                <div class="btns">
                    <div id="movSoBtn" class="subBtn"><a href="javascript:;"></a></div>
                    <div id="exactlyBtn" class="exactlyBtn"><a href="javascript:;"></a></div>
                    <div class="popMenu popStyle_2 exactlySoMenu">
                        <div class="arrowBg"></div>
                        <div class="inner">
                            <ul><a href="javascript:;" type="title_">标题</a></ul>
                            <ul><a href="javascript:;" type="actors">演员</a></ul>
                            <ul class="noBorder"><a href="javascript:;" type="director">导演</a></ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!---mob_top--->

        <div class="mob_mainMenu">
            <div class="parent">
                <li class="selected"><a href="http://www.changs1992.cn">影范电影</a></li>
                <%--<li id="mob_lite"><a href="javascript:;">精选</a></li>--%>
                <%--<li><a href="http://www.pniao.com/Mtopic">合集</a></li>--%>
                <%--<li><a href="http://www.pniao.com/Mov/seek">求片</a></li>--%>
                <%--<li><a href="http://www.pniao.com/Discuss">留言</a></li>--%>
                <div class="headerUserMenu">
                    <div class="thumb">
                        <a href="javascript:;" >
                            <img alt="" src="http://www.pniao.com/View/images/defaultUser_thumb.png"/>
                        </a>
                    </div>
                </div>
                <!---headerUserMenu--->
            </div>
            <!---parent--->
            <%--<div class="sondiv">--%>
            <%--<li><a href="http://www.pniao.com/Mov/todayUp">今日更新</a></li>--%>
            <%--<li><a href="http://www.pniao.com/Mov/movie">电影</a></li>--%>
            <%--<li><a href="http://www.pniao.com/Mov/tv">剧集</a></li>--%>
            <%--<li><a href="http://www.pniao.com/Mov/comic">动漫</a></li>--%>
            <%--<li><a href="http://www.pniao.com/Mov/doc">纪录片</a></li>--%>
            <%--<li><a href="http://www.pniao.com/Mov/tvUp">追剧</a></li>--%>


            <%--</div>--%>
            <!---sonDiv--->
        </div>
        <!---mob_mainMenu--->

        <div class="recommdMenu">
            <div class="each movie_">
                <li class="typeTitle">电影</li>
                <li title="新片榜"><a href="javascript:;"
                                   onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/movie/新片榜');">新片榜</a></li>
                <li title="一周口碑榜"><a href="javascript:;"
                                     onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/movie/一周口碑榜');">一周口碑榜</a>
                </li>
                <li title="热门"><a href="javascript:;"
                                  onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/movie/热门');">热门</a></li>
                <li title="经典"><a href="javascript:;"
                                  onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/movie/经典');">经典</a></li>
                <li title="豆瓣高分"><a href="javascript:;"
                                    onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/movie/豆瓣高分');">豆瓣高分</a>
                </li>
                <li title="冷门佳片"><a href="javascript:;"
                                    onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/movie/冷门佳片');">冷门佳片</a>
                </li>
                <li title="豆瓣250"><a href="javascript:;"
                                     onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/movie/豆瓣250');">豆瓣250</a>
                </li>
            </div>
            <div class="each tv_">
                <li class="typeTitle">剧集</li>
                <li title="热门"><a href="javascript:;"
                                  onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/tv/热门');">热门</a></li>
                <li title="美剧"><a href="javascript:;"
                                  onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/tv/美剧');">美剧</a></li>
                <li title="英剧"><a href="javascript:;"
                                  onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/tv/英剧');">英剧</a></li>
                <li title="韩剧"><a href="javascript:;"
                                  onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/tv/韩剧');">韩剧</a></li>
                <li title="日剧"><a href="javascript:;"
                                  onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/tv/日剧');">日剧</a></li>
                <li title="国产剧"><a href="javascript:;"
                                   onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/tv/国产剧');">国产剧</a></li>
                <li title="日本动画"><a href="javascript:;"
                                    onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/tv/日本动画');">日本动画</a></li>
                <li title="纪录片"><a href="javascript:;"
                                   onclick="javascript:movieAct(this,'ajaxUrl','/Mov/recommd/tv/纪录片');">纪录片</a></li>
            </div>
            <div class="each other_">
                <li class="typeTitle">榜单</li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/awards');">获奖提名作品</a></li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/favRank');">观影计划</a></li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/clickRank');">一周点击榜</a>
                </li>

                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/soRank');">周热搜榜</a></li>
            </div>
            <div class="clear"></div>
            <div class="each sort_">
                <li class="typeTitle">类型</li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/剧情');">剧情</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/喜剧');">喜剧</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/爱情');">爱情</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/惊悚');">惊悚</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/动作');">动作</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/犯罪');">犯罪</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/冒险');">冒险</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/悬疑');">悬疑</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/恐怖');">恐怖</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/奇幻');">奇幻</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/科幻');">科幻</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/动画');">动画</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/家庭');">家庭</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/传记');">传记</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/历史');">历史</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/战争');">战争</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/同性');">同性</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/音乐');">音乐</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/运动');">运动</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/古装');">古装</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/情色');">情色</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/西部');">西部</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/灾难');">灾难</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/武侠');">武侠</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/黑色电影');">黑色电影</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/sorts/短片');">短片</a>
                </li>
                <li class="clear"></li>
                <li class="typeTitle">地区</li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/美国');">美国</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/日本');">日本</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/英国');">英国</a>
                </li>
                <li><a href="javascript:;"
                       onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/中国大陆');">中国大陆</a></li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/法国');">法国</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/香港');">香港</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/韩国');">韩国</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/德国');">德国</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/意大利');">意大利</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/加拿大');">加拿大</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/台湾');">台湾</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/西班牙');">西班牙</a>
                </li>
                <li><a href="javascript:;"
                       onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/澳大利亚');">澳大利亚</a></li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/比利时');">比利时</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/泰国');">泰国</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/瑞典');">瑞典</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/俄罗斯');">俄罗斯</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/印度');">印度</a>
                </li>
                <li><a href="javascript:;" onclick="javascript:movieAct(this,'ajaxUrl','/Mov/tag/country/伊朗');">伊朗</a>
                </li>
            </div>
            <div class="multiSoContainer">
                <div class="multiSo ">
                    <a class="linkGo" href="javascript:;"></a>
                    <ul class="multi_type">
                        <li class="multiSo_selected" title="all"><a href="javascript:;"
                                                                    onclick="javascript:movieAct(this,'multiSo');">类型</a>
                        </li>
                        <li title="movie"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">电影</a>
                        </li>
                        <li title="tv"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">剧集</a></li>
                        <li title="doc"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">纪录片</a>
                        </li>
                        <li title="comic"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">动漫</a>
                        </li>
                    </ul>
                    <ul class="multi_sorts">
                        <li class="multiSo_selected" title="分类"><a href="javascript:;"
                                                                   onclick="javascript:movieAct(this,'multiSo');">分类</a>
                        </li>
                        <li title="剧情"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">剧情</a></li>
                        <li title="喜剧"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">喜剧</a></li>
                        <li title="爱情"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">爱情</a></li>
                        <li title="惊悚"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">惊悚</a></li>
                        <li title="动作"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">动作</a></li>
                        <li title="犯罪"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">犯罪</a></li>
                        <li title="冒险"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">冒险</a></li>
                        <li title="悬疑"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">悬疑</a></li>
                        <li title="恐怖"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">恐怖</a></li>
                        <li title="奇幻"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">奇幻</a></li>
                        <li title="科幻"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">科幻</a></li>
                        <li title="动画"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">动画</a></li>
                        <li title="家庭"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">家庭</a></li>
                        <li title="传记"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">传记</a></li>
                        <li title="历史"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">历史</a></li>
                        <li title="战争"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">战争</a></li>
                        <li title="同性"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">同性</a></li>
                        <li title="音乐"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">音乐</a></li>
                        <li title="运动"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">运动</a></li>
                        <li title="古装"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">古装</a></li>
                        <li title="情色"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">情色</a></li>
                        <li title="西部"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">西部</a></li>
                        <li title="灾难"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">灾难</a></li>
                        <li title="武侠"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">武侠</a></li>
                        <li title="黑色电影"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">黑色电影</a>
                        </li>
                        <li title="短片"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">短片</a></li>
                    </ul>
                    <ul class="multi_country">
                        <li class="multiSo_selected" title="国家地区"><a href="javascript:;"
                                                                     onclick="javascript:movieAct(this,'multiSo');">国家地区</a>
                        </li>
                        <li title="美国"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">美国</a></li>
                        <li title="日本"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">日本</a></li>
                        <li title="英国"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">英国</a></li>
                        <li title="中国大陆"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">中国大陆</a>
                        </li>
                        <li title="法国"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">法国</a></li>
                        <li title="香港"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">香港</a></li>
                        <li title="韩国"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">韩国</a></li>
                        <li title="德国"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">德国</a></li>
                        <li title="意大利"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">意大利</a>
                        </li>
                        <li title="加拿大"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">加拿大</a>
                        </li>
                        <li title="台湾"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">台湾</a></li>
                        <li title="西班牙"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">西班牙</a>
                        </li>
                        <li title="澳大利亚"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">澳大利亚</a>
                        </li>
                        <li title="比利时"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">比利时</a>
                        </li>
                        <li title="泰国"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">泰国</a></li>
                        <li title="瑞典"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">瑞典</a></li>
                        <li title="俄罗斯"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">俄罗斯</a>
                        </li>
                        <li title="印度"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">印度</a></li>
                        <li title="伊朗"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">伊朗</a></li>
                    </ul>
                    <ul class="multi_year">
                        <li class="multiSo_selected" title="年份"><a href="javascript:;"
                                                                   onclick="javascript:movieAct(this,'multiSo');">年份</a>
                        </li>
                        <li title="2018"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2018</a>
                        </li>
                        <li title="2017"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2017</a>
                        </li>
                        <li title="2016"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2016</a>
                        </li>
                        <li title="2015"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2015</a>
                        </li>
                        <li title="2014"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2014</a>
                        </li>
                        <li title="2013"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2013</a>
                        </li>
                        <li title="2012"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2012</a>
                        </li>
                        <li title="2011"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2011</a>
                        </li>
                        <li title="2010"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2010</a>
                        </li>
                        <li title="2009"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2009</a>
                        </li>
                        <li title="2008"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo');">2008</a>
                        </li>
                        <li><input type="text" id="multiSo_year" name="multiSo_year"/></li>
                    </ul>
                    <ul class="multi_subBtn">
                        <li class="subBtn"><a href="javascript:;" onclick="javascript:movieAct(this,'multiSo','sub');">提交查询</a>
                        </li>
                        <li class="resetBtn"><a href="javascript:;"
                                                onclick="javascript:movieAct(this,'multiSo','reset');">重置</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!---multiSo--->
    </div>
    <!---recommdMenu--->
</div>
<div class="clear"></div>
<div class="mainContainer">
    <div class="mainBox minHeight">
        <div class="subMenu">
            <div class="left orderMenu">
                <%--<li class="selected"><a rel="nofollow" href="http://www.pniao.com/Mov/main/time">--%>
                <%--最新发布</a></li>--%>
                <%--<li><a rel="nofollow" href="http://www.pniao.com/Mov/main/upDown">--%>
                <%--下载更新</a></li>--%>
                <%--<li><a rel="nofollow" href="http://www.pniao.com/Mov/main/score">--%>
                <%--豆瓣评分</a></li>--%>
            </div>
            <div class="right">
                <li>
                    <span><a href="javascript:;"
                             onclick="javascript:movieAct(this,'ajaxUrl','/Mov/multiSo/all/分类/国家地区/2017');">0</a></span>
                    <span><a title="0" href="javascript:;" onclick="javascript:movieAct(this,'delMultiSoCookie');">&times;</a></span>
                </li>
                <li>
                    <span><a href="javascript:;"
                             onclick="javascript:movieAct(this,'ajaxUrl','/Mov/multiSo/all/分类/国家地区/2017');">1</a></span>
                    <span><a title="1" href="javascript:;" onclick="javascript:movieAct(this,'delMultiSoCookie');">&times;</a></span>
                </li>
            </div>
        </div>


        <div class="movies">
            <div class="movieFlag eachOne" id="movieFlag44601">
                <div class="movTitle">
                    <li class="recommd">推荐</li>
                    <li><a target="_blank" href="http://www.changs1992.cn/wechat/web?code=44601">我为楼狂</a></li>
                    <div class="clear"></div>

                </div>
                <div class="movInfo">
                    <div class="right">
                        <div class="rightInnner">
                            <div class="briefBox">
                                <div class="briefInner">
                                    <div class="brief">
                                        入围第68届柏林国际电影节(2018)主竞赛单元。曼斯·曼斯森和阿克塞尔·彼得森导演。Nojet在经历潦倒的一生之后，于68岁时因为父亲的去世继承了斯德哥尔摩市中心的一座公寓楼。这本是好事一桩，但她却发现楼内7层住户的租房合同是非法的，而通...
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <ul>
                                    <li>导演:</li>
                                    <li>曼斯·曼斯森</li>
                                </ul>

                                <ul>
                                    <li>主演:</li>
                                    <li>Christian Saldert</li>
                                    <li>Léonore Ekstrand</li>
                                </ul>

                                <ul>
                                    <li>分类:</li>
                                    <li>犯罪</li>
                                </ul>

                                <ul>
                                    <li>地区:</li>
                                    <li>瑞典</li>
                                </ul>

                                <ul>
                                    <li class="score">
                                        <a rel="nofollow" target="blank"
                                           href="https://movie.douban.com/subject/27621666">
                                            豆瓣 </a>
                                    </li>
                                    <li class="imdb"><a rel="nofollow" target="blank"
                                                        href="https://www.imdb.com/title/tt6258766">IMDb</a></li>
                                    <li class="awards">获奖/提名</li>
                                </ul>


                                <ul>
                                    <li>发布时间：2018-03-17</li>
                                </ul>
                                <ul>
                                    <li class="fav">
                                        <a href="javascript:;" >+观影计划 26人</a>

                                    </li>

                                </ul>
                            </div>
                            <!---info--->
                        </div>
                    </div>
                    <!---right--->
                    <div class="left">
                        <div class="thumb">
                            <a href="http://www.changs1992.cn/wechat/web?code=44601">
                                <img alt="我为楼狂" class="orginSrc" data-url="http://www.pniao.com/p/movsp/23/44601.jpg"
                                     src="http://static.miguyu.com/View/images/imgLoad.png"/>
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
            <!---eachOne--->
            <div class="movieFlag eachOne" id="movieFlag46740">
                <div class="movTitle">
                    <li class="recommd">推荐</li>
                    <li><a target="_blank" href="http://www.changs1992.cn/wechat/web?code=46740">信号 长期未解决事件搜查组</a></li>
                    <div class="clear"></div>

                </div>
                <div class="movInfo">
                    <div class="right">
                        <div class="rightInnner">
                            <div class="briefBox">
                                <div class="briefInner">
                                    <div class="brief">日版“信号”，翻拍自2016年大热的韩剧《信号
                                        signal》，日本关西台、富士台制作播出的科幻悬疑剧，由内片辉、铃木浩介执导，尾崎将也编剧，坂口健太郎主演，，讲述警察三枝健通过一部对讲机穿越时空，与生活在过去的同行大山刚志携手解决悬案的故...
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <ul>
                                    <li>导演:</li>
                                    <li>内片辉</li>
                                </ul>

                                <ul>
                                    <li>主演:</li>
                                    <li>坂口健太郎</li>
                                    <li>北村一辉</li>
                                </ul>

                                <ul>
                                    <li>分类:</li>
                                    <li>科幻</li>
                                    <li>悬疑</li>
                                </ul>

                                <ul>
                                    <li>地区:</li>
                                    <li>日本</li>
                                </ul>

                                <ul>
                                    <li class="score">
                                        <a rel="nofollow" target="blank"
                                           href="https://movie.douban.com/subject/30137085">
                                            豆瓣 </a>
                                    </li>
                                </ul>


                                <ul>
                                    <li>发布时间：2018-04-10</li>
                                </ul>
                                <ul>
                                    <li class="fav">
                                        <a href="javascript:;" >+观影计划 21人</a>

                                    </li>

                                </ul>
                            </div>
                            <!---info--->
                        </div>
                    </div>
                    <!---right--->
                    <div class="left">
                        <div class="thumb">
                            <a href="http://www.changs1992.cn/wechat/web?code=46740">
                                <img alt="信号 长期未解决事件搜查组" class="orginSrc"
                                     data-url="http://www.pniao.com/p/movsp/24/46740.jpg"
                                     src="http://static.miguyu.com/View/images/imgLoad.png"/>
                            </a>
                            <div class="sessionProgress">
                                <div class="csessionProgress" style="width:10%">1/10</div>
                            </div>
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
            <!---eachOne--->
            <div class="movieFlag eachOne" id="movieFlag46790">
                <div class="movTitle">
                    <li class="recommd">推荐</li>
                    <li><a target="_blank" href="http://www.changs1992.cn/wechat/web?code=46790">死产儿</a></li>
                    <div class="clear"></div>

                </div>
                <div class="movInfo">
                    <div class="right">
                        <div class="rightInnner">
                            <div class="briefBox">
                                <div class="briefInner">
                                    <div class="brief">
                                        加拿大惊悚恐怖片。影片讲述的是一位新妈妈Mary（克里斯蒂·柏克饰）保护新生儿Adam（GraceChristensen饰）的故事。Mary生了一对双胞胎，但其中只有Adam存活了下来。在照顾Adam的过程中她疯狂地认为有某种超自然的实体在...
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <ul>
                                    <li>导演:</li>
                                    <li>布兰登·克里斯坦森</li>
                                </ul>

                                <ul>
                                    <li>主演:</li>
                                    <li>克里斯蒂·柏克</li>
                                    <li>杰西·莫斯</li>
                                </ul>

                                <ul>
                                    <li>分类:</li>
                                    <li>惊悚</li>
                                    <li>恐怖</li>
                                </ul>

                                <ul>
                                    <li>地区:</li>
                                    <li>加拿大</li>
                                </ul>

                                <ul>
                                    <li class="score">
                                        <a rel="nofollow" target="blank"
                                           href="https://movie.douban.com/subject/27042527">
                                            豆瓣 </a>
                                    </li>
                                    <li class="imdb"><a rel="nofollow" target="blank"
                                                        href="https://www.imdb.com/title/tt6087426">IMDb</a></li>
                                </ul>


                                <ul>
                                    <li>发布时间：2018-04-11</li>
                                </ul>
                                <ul>
                                    <li class="fav">
                                        <a href="javascript:;" >+观影计划 7人</a>

                                    </li>

                                </ul>
                            </div>
                            <!---info--->
                        </div>
                    </div>
                    <!---right--->
                    <div class="left">
                        <div class="thumb">
                            <a href="http://www.changs1992.cn/wechat/web?code=46790">
                                <img alt="死产儿" class="orginSrc" data-url="http://www.pniao.com/p/movsp/24/46790.jpg"
                                     src="http://static.miguyu.com/View/images/imgLoad.png"/>
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
            <!---eachOne--->
            <div class="movieFlag eachOne" id="movieFlag45986">
                <div class="movTitle">
                    <li class="recommd">推荐</li>
                    <li><a target="_blank" href="http://www.changs1992.cn/wechat/web?code=45986">中国骗局</a></li>
                    <div class="clear"></div>

                </div>
                <div class="movInfo">
                    <div class="right">
                        <div class="rightInnner">
                            <div class="briefBox">
                                <div class="briefInner">
                                    <div class="brief">
                                        由《安然：房间里最聪明的人》团队打造，这一部又是金融罪案题材，讲述一些中资公司在华尔街的“骗术”，这部时长84分钟的影片围绕浑水（MuddyWatersLLC）的卡尔森·布洛克和华尔街最直言不讳的中国批评者之一詹姆斯·查诺斯等知名美国做空者...
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <ul>
                                    <li>导演:</li>
                                    <li>Jed Rothstein</li>
                                </ul>


                                <ul>
                                    <li>分类:</li>
                                    <li>纪录片</li>
                                </ul>

                                <ul>
                                    <li>地区:</li>
                                    <li>美国</li>
                                </ul>

                                <ul>
                                    <li class="score">
                                        <a rel="nofollow" target="blank"
                                           href="https://movie.douban.com/subject/27115571">
                                            豆瓣 6.2 </a>
                                    </li>
                                    <li class="imdb"><a rel="nofollow" target="blank"
                                                        href="https://www.imdb.com/title/tt7215388">IMDb</a></li>
                                </ul>


                                <ul>
                                    <li>发布时间：2018-04-02</li>
                                </ul>
                                <ul>
                                    <li class="fav">
                                        <a href="javascript:;" >+观影计划
                                            136人</a>

                                    </li>

                                </ul>
                            </div>
                            <!---info--->
                        </div>
                    </div>
                    <!---right--->
                    <div class="left">
                        <div class="thumb">
                            <a href="http://www.changs1992.cn/wechat/web?code=45986">
                                <img alt="中国骗局" class="orginSrc"
                                     data-url="http://static.miguyu.com/p/movsp/23/45986.jpg"
                                     src="http://static.miguyu.com/View/images/imgLoad.png"/>
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
            <!---eachOne--->
            <div class="movieFlag eachOne" id="movieFlag45478">
                <div class="movTitle">
                    <li class="recommd">推荐</li>
                    <li><a target="_blank" href="http://www.changs1992.cn/wechat/web?code=45478">极地恶灵 第一季</a></li>
                    <div class="clear"></div>

                </div>
                <div class="movInfo">
                    <div class="right">
                        <div class="rightInnner">
                            <div class="briefBox">
                                <div class="briefInner">
                                    <div class="brief">
                                        AMC新剧，IMDB9.2，烂番茄85%，MTC76评价相当不错，根据DanSimmons07年所着同名小说改篇，讲述在1847年时皇家海军惊恐号在探索北极圈的「西北航道」时，他们的船受到某种不知名的掠食怪袭击，因此船员得为了生存而战。小说...
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <ul>
                                    <li>导演:</li>
                                    <li>爱德华·贝尔格</li>
                                </ul>

                                <ul>
                                    <li>主演:</li>
                                    <li>杰瑞德·哈里斯</li>
                                    <li>塞伦·希德</li>
                                </ul>

                                <ul>
                                    <li>分类:</li>
                                    <li>剧情</li>
                                    <li>恐怖</li>
                                </ul>

                                <ul>
                                    <li>地区:</li>
                                    <li>美国</li>
                                </ul>

                                <ul>
                                    <li class="score">
                                        <a rel="nofollow" target="blank"
                                           href="https://movie.douban.com/subject/24722767">
                                            豆瓣 8.4 </a>
                                    </li>
                                    <li class="imdb"><a rel="nofollow" target="blank"
                                                        href="https://www.imdb.com/title/tt2708480">IMDb</a></li>
                                </ul>


                                <ul>
                                    <li>发布时间：2018-03-27</li>
                                </ul>
                                <ul>
                                    <li class="fav">
                                        <a href="javascript:;" >+观影计划
                                            322人</a>

                                    </li>

                                </ul>
                            </div>
                            <!---info--->
                        </div>
                    </div>
                    <!---right--->
                    <div class="left">
                        <div class="thumb">
                            <a href="http://www.changs1992.cn/wechat/web?code=45478">
                                <img alt="极地恶灵 第一季" class="orginSrc"
                                     data-url="http://static.miguyu.com/p/movsp/23/45478.jpg"
                                     src="http://static.miguyu.com/View/images/imgLoad.png"/>
                            </a>
                            <div class="sessionProgress">
                                <div class="csessionProgress" style="width:100%">10/10&nbsp;已完结</div>
                            </div>
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
            <!---eachOne--->
            <div class="movieFlag eachOne" id="movieFlag44653">
                <div class="movTitle">
                    <li class="recommd">推荐</li>
                    <li><a target="_blank" href="http://www.changs1992.cn/wechat/web?code=44653">移动迷宫3：死亡解药</a></li>
                    <div class="clear"></div>

                </div>
                <div class="movInfo">
                    <div class="right">
                        <div class="rightInnner">
                            <div class="briefBox">
                                <div class="briefInner">
                                    <div class="brief">
                                        移动迷宫系列影片的第三部，由韦斯·波尔执导，迪伦·奥布莱恩、卡雅·斯考达里奥、托马斯·桑斯特、李基弘领衔主演的科幻冒险片。该片讲述了托马斯率领的林间斗士在经历了迷宫逃脱和末日丧尸的生死考验后，迎来最后的正邪较量。
                                        　《移动迷宫3》作为系列最...
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <ul>
                                    <li>导演:</li>
                                    <li>韦斯·鲍尔</li>
                                </ul>

                                <ul>
                                    <li>主演:</li>
                                    <li>迪伦·奥布莱恩</li>
                                    <li>卡雅·斯考达里奥</li>
                                </ul>

                                <ul>
                                    <li>分类:</li>
                                    <li>动作</li>
                                    <li>科幻</li>
                                </ul>

                                <ul>
                                    <li>地区:</li>
                                    <li>美国</li>
                                </ul>

                                <ul>
                                    <li class="score">
                                        <a rel="nofollow" target="blank"
                                           href="https://movie.douban.com/subject/26004132">
                                            豆瓣 5.5 </a>
                                    </li>
                                    <li class="imdb"><a rel="nofollow" target="blank"
                                                        href="https://www.imdb.com/title/tt4500922">IMDb</a></li>
                                </ul>


                                <ul>
                                    <li>发布时间：2018-03-20</li>
                                </ul>
                                <ul>
                                    <li class="fav">
                                        <a href="javascript:;" >+观影计划
                                            190人</a>

                                    </li>

                                </ul>
                            </div>
                            <!---info--->
                        </div>
                    </div>
                    <!---right--->
                    <div class="left">
                        <div class="thumb">
                            <a href="http://www.changs1992.cn/wechat/web?code=44653">
                                <img alt="移动迷宫3：死亡解药" class="orginSrc"
                                     data-url="http://static.miguyu.com/p/movsp/23/44653.jpg"
                                     src="http://static.miguyu.com/View/images/imgLoad.png"/>
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
            <!---eachOne--->
            <div class="movieFlag eachOne" id="movieFlag46361">
                <div class="movTitle">
                    <li class="recommd">推荐</li>
                    <li><a target="_blank" href="http://www.changs1992.cn/wechat/web?code=46361">城与城</a></li>
                    <div class="clear"></div>

                </div>
                <div class="movInfo">
                    <div class="right">
                        <div class="rightInnner">
                            <div class="briefBox">
                                <div class="briefInner">
                                    <div class="brief">
                                        BBC的奇幻新剧集，改编自“新怪谭”作家柴纳·米耶维同名小说，雨果奖长篇作品。发生在贫富对立的两座平行城市间的一场神秘谋杀案，一个荒诞而现实的社会实验。剧中用一半模糊的画面来展现两个平行城市，很有趣。
                                        柴纳·米耶维的作品里有着浓浓的英式诡异...
                                    </div>
                                </div>
                            </div>
                            <div class="info">

                                <ul>
                                    <li>主演:</li>
                                    <li>克里斯蒂安·卡玛戈</li>
                                    <li>罗恩·库克</li>
                                </ul>

                                <ul>
                                    <li>分类:</li>
                                    <li>奇幻</li>
                                    <li>悬疑</li>
                                </ul>

                                <ul>
                                    <li>地区:</li>
                                    <li>英国</li>
                                </ul>

                                <ul>
                                    <li class="score">
                                        <a rel="nofollow" target="blank"
                                           href="https://movie.douban.com/subject/27145212">
                                            豆瓣 </a>
                                    </li>
                                    <li class="imdb"><a rel="nofollow" target="blank"
                                                        href="https://www.imdb.com/title/tt7205264">IMDb</a></li>
                                </ul>


                                <ul>
                                    <li>发布时间：2018-04-06</li>
                                </ul>
                                <ul>
                                    <li class="fav">
                                        <a href="javascript:;" >+观影计划 55人</a>

                                    </li>

                                </ul>
                            </div>
                            <!---info--->
                        </div>
                    </div>
                    <!---right--->
                    <div class="left">
                        <div class="thumb">
                            <a href="http://www.changs1992.cn/wechat/web?code=46361">
                                <img alt="城与城" class="orginSrc" data-url="http://www.pniao.com/p/movsp/24/46361.jpg"
                                     src="http://static.miguyu.com/View/images/imgLoad.png"/>
                            </a>
                            <div class="sessionProgress">
                                <div class="csessionProgress" style="width:25%">1/4</div>
                            </div>
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
            <!---eachOne--->
            <div class="movieFlag eachOne" id="movieFlag46162">
                <div class="movTitle">
                    <li class="recommd">推荐</li>
                    <li><a target="_blank" href="http://www.changs1992.cn/wechat/web?code=46162">摇摆的心</a></li>
                    <div class="clear"></div>

                </div>
                <div class="movInfo">
                    <div class="right">
                        <div class="rightInnner">
                            <div class="briefBox">
                                <div class="briefInner">
                                    <div class="brief">
                                        影片改编自同名小说，吉高由里子、松坂桃李、松山研一主演，故事讲述的是：短短半年内，女友失踪、父亲（松山研一）确诊癌症晚期、母亲（吉高由里子）车祸身亡，亮介（松坂桃李）觉得自己的人生已跌落谷底。然而，灾难从不因悲伤就不再来临。
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <ul>
                                    <li>导演:</li>
                                    <li>熊泽尚人</li>
                                </ul>

                                <ul>
                                    <li>主演:</li>
                                    <li>吉高由里子</li>
                                    <li>松坂桃李</li>
                                </ul>

                                <ul>
                                    <li>分类:</li>
                                    <li>剧情</li>
                                    <li>悬疑</li>
                                </ul>

                                <ul>
                                    <li>地区:</li>
                                    <li>日本</li>
                                </ul>

                                <ul>
                                    <li class="score">
                                        <a rel="nofollow" target="blank"
                                           href="https://movie.douban.com/subject/26926304">
                                            豆瓣 6.6 </a>
                                    </li>
                                    <li class="imdb"><a rel="nofollow" target="blank"
                                                        href="https://www.imdb.com/title/tt6289898">IMDb</a></li>
                                </ul>


                                <ul>
                                    <li>发布时间：2018-04-04</li>
                                </ul>
                                <ul>
                                    <li class="fav">
                                        <a href="javascript:;" >+观影计划 85人</a>
                                    </li>

                                </ul>
                            </div>
                            <!---info--->
                        </div>
                    </div>
                    <!---right--->
                    <div class="left">
                        <div class="thumb">
                            <a href="http://www.changs1992.cn/wechat/web?code=46162">
                                <img alt="摇摆的心" class="orginSrc"
                                     data-url="http://static.miguyu.com/p/movsp/24/46162.jpg"
                                     src="http://static.miguyu.com/View/images/imgLoad.png"/>
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
            <!---eachOne--->
            <div class="movieFlag eachOne" id="movieFlag44786">
                <div class="movTitle">
                    <li class="recommd">推荐</li>
                    <li><a target="_blank" href="http://www.changs1992.cn/wechat/web?code=44786">夹缝中</a></li>
                    <div class="clear"></div>

                </div>
                <div class="movInfo">
                    <div class="right">
                        <div class="rightInnner">
                            <div class="briefBox">
                                <div class="briefInner">
                                    <div class="brief">
                                        以色列和法国合拍片。第41届多伦多国际电影节(2016)亚洲电影促进联盟奖。故事刻意塑造了截然不同的三种典型女性——保守穆斯林、独立女强人、女同。在特拉维夫复杂的文化背景里，她们一直在与天差地别的价值观冲突与和解，最终因为女性共同承担的苦难...
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <ul>
                                    <li>导演:</li>
                                    <li>Maysaloun Hamoud</li>
                                </ul>

                                <ul>
                                    <li>主演:</li>
                                    <li>Mouna Hawa</li>
                                    <li>Shaden Kanboura</li>
                                </ul>

                                <ul>
                                    <li>分类:</li>
                                    <li>剧情</li>
                                </ul>

                                <ul>
                                    <li>地区:</li>
                                    <li>以色列</li>
                                </ul>

                                <ul>
                                    <li class="score">
                                        <a rel="nofollow" target="blank"
                                           href="https://movie.douban.com/subject/26876339">
                                            豆瓣 </a>
                                    </li>
                                    <li class="imdb"><a rel="nofollow" target="blank"
                                                        href="https://www.imdb.com/title/tt5974388">IMDb</a></li>
                                    <li class="awards">获奖/提名</li>
                                </ul>


                                <ul>
                                    <li>发布时间：2018-03-21</li>
                                </ul>
                                <ul>
                                    <li class="fav">
                                        <a href="javascript:;" >+观影计划 25人</a>

                                    </li>

                                </ul>
                            </div>
                            <!---info--->
                        </div>
                    </div>
                    <!---right--->
                    <div class="left">
                        <div class="thumb">
                            <a href="http://www.changs1992.cn/wechat/web?code=44786">
                                <img alt="夹缝中" class="orginSrc" data-url="http://static.miguyu.com/p/movsp/23/44786.jpg"
                                     src="http://static.miguyu.com/View/images/imgLoad.png"/>
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
            <!---eachOne--->
            <div class="movieFlag eachOne" id="movieFlag44819">
                <div class="movTitle">
                    <li class="recommd">推荐</li>
                    <li><a target="_blank" href="http://www.changs1992.cn/wechat/web?code=44819">沉默的孩子</a></li>
                    <div class="clear"></div>

                </div>
                <div class="movInfo">
                    <div class="right">
                        <div class="rightInnner">
                            <div class="briefBox">
                                <div class="briefInner">
                                    <div class="brief">
                                        第90届奥斯卡金像奖(2018)最佳真人短片。一部二十分钟讲述聋童故事短片。只得四岁的Libby是天生的聋童，来自英国郊外的一个中产家庭，父母及兄弟姊妹都是健听人士，而父母亦不懂得如何照顾Libby，只能一直让她活在一个安静的世界裡。随著L...
                                    </div>
                                </div>
                            </div>
                            <div class="info">
                                <ul>
                                    <li>导演:</li>
                                    <li>克里斯·奥弗顿</li>
                                </ul>

                                <ul>
                                    <li>主演:</li>
                                    <li>Rachel Shenton</li>
                                    <li>Rachel Fielding</li>
                                </ul>

                                <ul>
                                    <li>分类:</li>
                                    <li>剧情</li>
                                    <li>短片</li>
                                </ul>

                                <ul>
                                    <li>地区:</li>
                                    <li>英国</li>
                                </ul>

                                <ul>
                                    <li class="score">
                                        <a rel="nofollow" target="blank"
                                           href="https://movie.douban.com/subject/27603770">
                                            豆瓣 7.6 </a>
                                    </li>
                                    <li class="imdb"><a rel="nofollow" target="blank"
                                                        href="https://www.imdb.com/title/tt6186970">IMDb</a></li>
                                    <li class="awards">获奖/提名</li>
                                </ul>


                                <ul>
                                    <li>发布时间：2018-03-21</li>
                                </ul>
                                <ul>
                                    <li class="fav">
                                        <a href="javascript:;" >+观影计划
                                            110人</a>

                                    </li>

                                </ul>
                            </div>
                            <!---info--->
                        </div>
                    </div>
                    <!---right--->
                    <div class="left">
                        <div class="thumb">
                            <a href="http://www.changs1992.cn/wechat/web?code=44819">
                                <img alt="沉默的孩子" class="orginSrc"
                                     data-url="http://static.miguyu.com/p/movsp/23/44819.jpg"
                                     src="http://static.miguyu.com/View/images/imgLoad.png"/>
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
            <!---eachOne--->
        </div>
        <div class="centerContainer mainPage">
            <li><a ref="nofollow" title="第一页" href="http://www.changs1992.cn">第1页</a></li>


            <li class='selected'><a ref="nofollow" href="http://www.changs1992.cn/main/pn1.html">1</a>
            </li>
            <li><a ref="nofollow" href="http://www.changs1992.cn/main/pn2.html">2</a>
            </li>
            <li><a ref="nofollow" href="http://www.changs1992.cn/main/pn3.html">3</a>
            </li>
            <li><a ref="nofollow" href="http://www.changs1992.cn/main/pn4.html">4</a>
            </li>
            <li><a ref="nofollow" href="http://www.changs1992.cn/main/pn5.html">5</a>
            </li>

            <li><input type="text" id="goPageNum_input" ahref="http://www.changs1992.cn/main/pn" ext=".html"/></li>
            <li><a id="goPageNum_link" href="javascript:;" title="输入页码跳转">跳转</a></li>

            <li><a ref="nofollow" title="下5页" href="http://www.changs1992.cn/main/pn8.html">&gt</a></li>

            <li><a ref="nofollow" title="末页" href="http://www.changs1992.cn/main/pn50.html">末页</a></li>
        </div>

    </div>
    <!---/mainBox--->
    <div class="siderBar">

        <div class="signDiv">
            <li class="signBtn">
                <%--<a href="javascript:;" >我要签到</a>--%>
            </li>
            <%--<li>04月11日，2018年第101天</li>--%>
        </div>

        <div class="siderLinkNav">
            <a href="http://www.changs1992.cn/clickRank">一周点击榜 &raquo;</a>
        </div>
        <div class="siderPadding siderMovies">
            暂无相关内容
        </div>


        <div class="clear"></div>

        <div class="siderLinkNav">联系我们</div>
        <div class="siderPadding siderContact">
            <ul>

                <li class="weixin grayImg" title="">
                    <a target="_blank"
                       href="http://my-photos.changs1992.cn/9acaaae7c73a4a528790ab35073b5652_qrcode_for_gh_f0b32c3f4179_258.jpg"><img
                            alt="微信公众号"
                            src="http://my-photos.changs1992.cn/9acaaae7c73a4a528790ab35073b5652_qrcode_for_gh_f0b32c3f4179_258.jpg"/></a>
                </li>
                <li class="mail grayImg" title="业务洽谈：adu48625@gmail.com">
                    <a><img alt="邮件联系" src="http://www.pniao.com/View/images/mail.png"/></a>
                </li>
                <li class="qq grayImg" title="QQ交流群：690433212">
                    <a><img alt="QQ交流" src="http://www.pniao.com/View/images/qq.png"/></a>
                </li>
            </ul>
            <ul class="contactDetail"></ul>
        </div>
        <div class="siderPadding supportUs">
            <img alt="支持我们"
                 src="http://my-photos.changs1992.cn/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20180411134714.jpg"/>
        </div>


    </div>
    <!---/siderBar--->
</div>
<div class="clear"></div>
<div class="footerContainer" bg="">
    <div class="copyRight">
        <li class="mobileMode">
            <a href="http://www.pniao.com/Mobile/viewMode/pc">电脑版</a></li>
        <li>广告洽谈：adu48625@gmail.com，QQ交流群：710775401</li>

    </div>

</div>

<div id="goTopBox" class="siderFloatBox goTopBox ieFloat">
    <div class="btn topBtn" title="返回顶部"><a href="javascript:;">返回顶部</a></div>
</div>
</div>
</body>
<script type="text/javascript" charset="utf-8">
    $().ready(function () {
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?a8bf1ff34b8beab2a6e10ae8a073e5ac";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    })/////百度
</script>
</html>