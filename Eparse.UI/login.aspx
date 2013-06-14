<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Eparse.UI.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="site-container" class="">
        <div id="site-columns" class="grid-wrap cfix">
            <div id="site-left-column">
                <div id="primary-content" class="cfix ui-corner-all">

                    <h2 class="text-align-center">加入Eparse,书写自己的生活</h2>


                    <div class="otherlogin" id="one-click">

                        <a href="http://www.behance.net/signup/social/facebook" class="form-button form-button-large signup-button-social signup-button-facebook margin-right-10 auto-width">
                            <span class="social-signup-icon inline-block">
                                <span class="spritei facebook-icon inline-block"></span>
                            </span>
                            腾讯QQ </a>
                        <a href="http://www.behance.net/signup/social/facebook" class="form-button form-button-large signup-button-social signup-button-facebook margin-right-10 auto-width">
                            <span class="social-signup-icon inline-block">
                                <span class="spritei facebook-icon inline-block"></span>
                            </span>
                            新浪微博 </a>

                    </div>

                    <em class="or-split text-align-center">or sign up using your email:</em>


                    <div class="auth-block cfix ui-corner ">


                        <form class="form-horizontal">
                            <div class="control-group">

                                <div class="controls">
                                    <input type="text" id="inputEmail" placeholder="Email">
                                </div>
                            </div>
                            <div class="control-group">

                                <div class="controls">
                                    <input type="password" id="inputPassword" placeholder="Password">
                                </div>
                            </div>



                            <p class="text-error log-info">
                                By signing up, I agree to Behance's <a class="tos-link" target="_blank" href="http://www.behance.net/misc/terms">Terms of Service</a>.
                            </p>

                            <div class="form-item-left clearfix" id="submit-button-container">
                                <a class="btn btn-info">登  录</a>
                            </div>

                        </form>


                    </div>
                    <!-- .auth-block -->
                    <a class="form-button-tour" href="http://www.behance.net/tour">Want to learn more? Take a Tour&nbsp; →</a>

                </div>
                <!-- #primary-content -->
            </div>
            <!-- #site-left-column -->
        </div>
        <!-- #site-columns -->
    </div>
</asp:Content>
