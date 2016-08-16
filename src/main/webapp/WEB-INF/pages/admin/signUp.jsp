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
        <p class="panel-heading no-collapse">Sign Up</p>

        <div class="panel-body">
            <form>
                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" class="form-control span12">
                </div>
                <div class="form-group">
                    <label>Last Name</label>
                    <input type="text" class="form-control span12">
                </div>
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="text" class="form-control span12">
                </div>
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" class="form-control span12">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control span12">
                </div>
                <div class="form-group">
                    <a href="/admin/home/indexPage" class="btn btn-primary pull-right">Sign Up!</a>
                    <label class="remember-me"><input type="checkbox"> I agree with the <a
                            href="terms-and-conditions.html">Terms and Conditions</a></label>
                </div>
                <div class="clearfix"></div>
            </form>
        </div>
    </div>
    <p><a href="privacy-policy.html" style="font-size: .75em; margin-top: .25em;">Privacy Policy</a></p>
</div>

<script type="text/javascript">
    $("[rel=tooltip]").tooltip();
    $(function () {
        $('.demo-cancel-click').click(function () {
            return false;
        });
    });
</script>


</body>
</html>