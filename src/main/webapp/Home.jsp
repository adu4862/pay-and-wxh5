<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>How to keep footers at the bottom of the page (CSS demo)</title>
    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8"/>
    <meta name="description" content="How to keep footers at the bottom of the page (CSS demo)"/>
    <meta name="keywords" content="How to keep footers at the bottom of the page (CSS demo)"/>
    <meta name="robots" content="index, follow"/>
    <style media="screen" type="text/css">
        html,
        body {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        #container {
            min-height: 100%;
            position: relative;
        }

        #header {
            background: #ff0;
            padding: 10px;
        }

        #body {
            padding: 10px;
            padding-bottom: 60px; /* Height of the footer */
        }

        #footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px; /* Height of the footer */
            background: #6cf;
        }

        /* other non-essential CSS */
        #header p,
        #header h1 {
            margin: 0;
            padding: 10px 0 0 10px;
        }

        #footer p {
            margin: 0;
            padding: 10px;
        }
    </style>
    <!--[if lt IE 7]>
    <style media="screen" type="text/css">
        #container {
            height: 100%;
        }
    </style>
    <![endif]-->
</head>
<body>

<div id="container">
    <div id="header">
        <!-- Header start -->

        <h1>沧海笑鱼生欢迎您</h1>
        <!-- Header end -->
    </div>
    <div id="body">
        <!-- Body start -->
        <p>沧海笑鱼生欢迎您</p>
        <!-- Body end -->
    </div>
    <div id="footer">
        <!-- Footer start -->
        <div class="recordcode"><a href="http://www.miitbeian.gov.cn"
                                   target="_blank"><i></i>【湘ICP备18004656号】</a></div>
        <!-- Footer end -->
    </div>
</div>

<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>

<script type="text/javascript">
    _uacct = "UA-1848067-8";
    urchinTracker();
</script>

</body>
</html>
