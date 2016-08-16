<%--
  Created by IntelliJ IDEA.
  User: Viki.Feng
  Date: 2016/4/12
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content=""/>

<link href="/staticmedia/components/bootstrap/css/bootstrap.css" rel='stylesheet' type='text/css'/>
<link href="/staticmedia/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>

<script type="application/x-javascript">
    addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    }
</script>

<script src="/staticmedia/components/jquery/jquery-1.8.1.min.js"></script>
<!--start-smoth-scrolling-->
<script type="text/javascript" src="/staticmedia/js/move-top.js"></script>
<script type="text/javascript" src="/staticmedia/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 900);
        });
    });
</script>
<!--start-smoth-scrolling-->
