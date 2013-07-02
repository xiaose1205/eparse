<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Eparse.UI.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="site-container" class="">
        <div id="site-columns" class="grid-wrap cfix">
            <div id="site-left-column">
                <div id="primary-content" class="cfix ui-corner-all">

                    <h2 class="text-align-center">加入Eparse,书写自己的生活</h2>

                    <span id="showmsg">asdasdsda</span>
                    <div class="otherlogin" id="one-click">

                        <a href="http://www.behance.net/signup/social/facebook" class="form-button form-button-large signup-button-social signup-button-qq margin-right-10 auto-width">
                            <span class="social-signup-icon inline-block">
                                <img src="images/tx.png" />
                                <span class="spritei facebook-icon inline-block"></span>
                            </span>
                            腾讯QQ </a>
                        <a href="http://www.behance.net/signup/social/facebook" class="form-button form-button-large signup-button-social signup-button-sina margin-right-10 auto-width">
                            <span class="social-signup-icon inline-block">
                                <img src="images/wb.png" />
                                <span class="spritei facebook-icon inline-block"></span>
                            </span>
                            新浪微博 </a>

                    </div>

                    <em class="or-split text-align-center">已有账号登录:</em>


                    <div class="auth-block cfix ui-corner ">


                        <form class="form-horizontal">
                            <div class="control-group">

                                <div class="controls">
                                    <input type="text" id="inputEmail" placeholder="用户名/邮箱">
                                </div>
                            </div>
                            <div class="control-group">

                                <div class="controls">
                                    <input type="password" id="inputPassword" placeholder="您的密码">
                                </div>
                            </div>



                            <p class="text-error log-info">
                                <label class="checkbox">
                                    <input type="checkbox">
                                    记住我(一个月内免登录)
                                </label>
                            </p>

                            <div class="form-item-left clearfix" id="submit-button-container">
                                <a class="btn btn-info" id="loginbtn" href="javascript:void(0);">登  录</a>
                                <a data-inline="true" class="btn btn-link" href="Registe.aspx">忘记密码 &raquo;</a>
                                <a data-inline="true" class="btn btn-link" href="Registe.aspx">点击注册 &raquo;</a>

                            </div>

                        </form>


                    </div>
                    <!-- .auth-block -->
                    <a class="form-button-tour" href="http://www.behance.net/tour">想知道更多吗? 来一段学习旅程吧&nbsp; →</a>

                </div>
                <!-- #primary-content -->
            </div>
            <!-- #site-left-column -->
        </div>
        <!-- #site-columns -->
    </div>
</asp:Content>
