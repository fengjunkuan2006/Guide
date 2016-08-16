<%--
  Created by IntelliJ IDEA.
  User: Viki.Feng
  Date: 2016/4/12
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Admin</title>
    <jsp:include flush="true" page="common.jsp"/>
</head>

<!--[if lt IE 7 ]>
<body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]>
<body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]>
<body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]>
<body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class=" theme-blue">
<!--<![endif]-->

<div class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <a class="" href="/admin/home/indexPage"><span class="navbar-brand"><span class="fa fa-paper-plane"></span> Aircraft</span></a>
    </div>

    <div class="navbar-collapse collapse" style="height: 1px;">

    </div>
</div>
</div>


<div class="dialog">
    <div class="panel panel-default">
        <p class="panel-heading no-collapse">Sign In</p>

        <div class="panel-body">
            <form>
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" id="username" class="form-control span12">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" id="password" class="form-controlspan12 form-control">
                </div>
                <a href="javascript:login()" class="btn btn-primary pull-right">Sign In</a>
                <label class="remember-me"><input type="checkbox"> Remember me</label>

                <div class="clearfix"></div>
            </form>
        </div>
    </div>
    <p class="pull-right" style=""><a href="#" target="blank" style="font-size: .75em; margin-top: .25em;">Design by
        Portnine</a></p>

    <p><a href="reset-password.html">Forgot your password?</a></p>
</div>

<script type="text/javascript">
    $("[rel=tooltip]").tooltip();
    $(function () {
        $('.demo-cancel-click').click(function () {
            return false;
        });
    });

    function login() {
        var username = $("#username");
        var password = $("#password");

        $.ajax({
            url: "/admin/home/login",
            data: '{"username":"' + username.val() + '", "password":"' + password.val() + '"}',
            type: "POST",
            dataType: "json",
            contentType: "application/json",
            async: false,
            success: function (responseText) {
                if (responseText.code == 0) {
                    window.location.href = '/admin/home/indexPage';
                } else {
                    alert(responseText.message);
                }
            },
            error: function () {
                alert("Error");
            }
        });
    }
</script>


</body>
</html>