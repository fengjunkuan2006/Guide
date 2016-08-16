<%--
  Created by IntelliJ IDEA.
  User: Viki.Feng
  Date: 2016/4/12
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="banner banner-2">
    <div class="container">
        <div class="header-top">
            <div class="logo">
                <a href="/home/indexPage"><img src="/staticmedia/images/logo11.png" class="img-responsive" alt=""/></a>
            </div>
            <div class="top-menu">
                <span class="menu"> </span>
                <ul>
                    <li><a class="active hvr-shutter-out-horizontal" href="/home/indexPage">Home</a></li>
                    <li><a class="hvr-shutter-out-horizontal" href="/home/aboutPage">About us</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
            <!-- script-for-menu -->
            <script>
                $("span.menu").click(function () {
                    $(".top-menu ul").slideToggle("slow", function () {
                    });
                });
            </script>
            <!-- script-for-menu -->
        </div>
        <div class="banner-bottom">
            <div class="col-md-6 banner-left">
                <h1>MOBILE</h1>

                <h2>APP</h2>

                <h3>MOBILE<span>STORE</span></h3>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget consequat est. Aliquam ac nunc
                    mauris. </p>
            </div>
            <div class="col-md-6 banner-right">
                <div class="app-img">
                    <img src="/staticmedia/images/3333.png" class="img-responsive" alt=""/>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>