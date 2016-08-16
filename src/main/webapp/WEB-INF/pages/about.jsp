<%--
  Created by IntelliJ IDEA.
  User: Viki.Feng
  Date: 2016/4/12
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <jsp:include flush="true" page="common.jsp"/>
</head>

<body>
<!-- header -->
<jsp:include flush="true" page="header.jsp"/>

<!-- content -->
<div class="about">
    <div class="container">
        <h3>ABOUT US</h3>

        <div class="col-md-4 about-left">
            <img src="/staticmedia/images/about-top.jpg" class="img-responsive" alt=""/>

        </div>
        <div class="col-md-6 about-right">
            <h4>Nullam in tristique lacus, nec varius quam. Sed lacinia, scelerisque accumsan, est mi fermentum leo,
                eu</h4>

            <p>Etiam ex velit, suscipit eu posuere eu, convallis at mi. Duis in arcu urna. Praesent pharetra sit amet
                nulla id finibus. Curabitur hendrerit congue felis. Nullam in tristique lacus, nec varius quam. Sed
                lacinia,
                justo nec scelerisque accumsan, est mi fermentum leo, eu condimentum sapien quam eu enim. Pellentesque
                congue,
                risus eu semper tristique, metus ipsum varius justojusto nec scelerisque accumsan, est mi fermentum leo,
                eu condimentum sapien quam eu enim. Pellentesque congue,
                risus eu semper tristique, metus ipsum varius justojusto nec scelerisque accumsan, est mi fermentum leo,
                eu condimentum sapien quam eu enim. Pellentesque congue,
                risus eu semper tristique, metus ipsum varius justo, vel volutpat lorem tortor et turpis. Etiam auctor
                sem tortor,
                nec fermentum mauris sollicitudin non. Donec gravida massa neque, a auctor lectus elementum non. Vivamus
                porta orci
                ssapien, eu volutpat neque tincidunt acapien, eu volutpat neque tincidunt ac.</p>
        </div>
        <div class="clearfix"></div>
        <div class="about-grids">
            <h3>Why Choose Us</h3>

            <div class="col-md-4 about-grid">
                <span class="about-icon"><p>01</p></span>

                <div class="about-grid-info">
                    <h4>Etiam cursus augue</h4>

                    <p>Autem vel eum iriure dolor in hendrerit in volestie consequat, vel illum dolore eu feugiat nulla
                        elenit augue duis dolore te feugait nulla facilisi.</p>
                </div>
            </div>
            <div class="col-md-4 about-grid">
                <span class="about-icon"><p>02</p></span>

                <div class="about-grid-info">
                    <h4>Etiam cursus augue</h4>

                    <p>Autem vel eum iriure dolor in hendrerit in volestie consequat, vel illum dolore eu feugiat nulla
                        elenit augue duis dolore te feugait nulla facilisi.</p>
                </div>
            </div>
            <div class="col-md-4 about-grid">
                <span class="about-icon"><p>03</p></span>

                <div class="about-grid-info">
                    <h4>Etiam cursus augue</h4>

                    <p>Autem vel eum iriure dolor in hendrerit in volestie consequat, vel illum dolore eu feugiat nulla
                        elenit augue duis dolore te feugait nulla facilisi.</p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="team">
            <h2>OUR TEAM</h2>

            <div class="team-grid">
                <div class="col-md-3 team-grid-left">
                    <div class="team-top">
                        <img class="img-responsive" src="/staticmedia/images/te.jpg" alt="">
                    </div>
                    <h4>Designer</h4>

                    <p>Lorem ipsum dolor sit amet</p>
                </div>
                <div class="col-md-3 team-grid-left">
                    <div class="team-top">
                        <img class="img-responsive" src="/staticmedia/images/te1.jpg" alt="">
                    </div>
                    <h4>Web Designer</h4>

                    <p>Lorem ipsum dolor sit amet</p>
                </div>
                <div class="col-md-3 team-grid-left ">
                    <div class="team-top">
                        <img class="img-responsive" src="/staticmedia/images/te2.jpg" alt="">
                    </div>
                    <h4>Web Designer</h4>

                    <p>Lorem ipsum dolor sit amet</p>
                </div>
                <div class="col-md-3 team-grid-left">
                    <div class="team-top">
                        <img class="img-responsive" src="/staticmedia/images/te3.jpg" alt="">
                    </div>
                    <h4>Apps Designer</h4>

                    <p>Lorem ipsum dolor sit amet</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

<!-- footer -->
<jsp:include flush="true" page="footer.jsp"/>

</body>
</html>
