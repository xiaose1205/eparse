<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navigation.ascx.cs" Inherits="Eparse.UI.me.Navigation" %>
<div class="navigation" id="navigation-top">
    <a id="global-nav-toggle" href="#">
        <span id="global-nav-toggle-icon" class="global-sprites global-sprites-nav-toggle-left"></span>
    </a>
    <div class="shadow">
        <ul class=" main-nav  ">
            <li>
                <img src="../images/eparse.png" width="70px" style="margin-top:5px;width:70px;"/>
            </li>
            <li style="padding-top:5px;">
                <form action="http://www.veedou.com/search.asp" method="post">

                    <input id="appendedInputButton" type="text" style="width: 90px;margin-bottom:0px;">
                </form>
            </li>
            <li class="active"><a href="#control#" id="docontrolpanel">控制面板</a></li>
            <li class=" ">
                <div class="btn-group">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">多页管理
                                   <span class="caret"></span>
                    </a>


                    <ul class="dropdown-menu" style="z-index: 1000">
                        <li><a href="#"><i class="icon-pencil"></i>我的青春我做主</a></li>
                        <li><a href="#"><i class="icon-pencil"></i>我要努力</a></li>
                        <li><a href="#"><i class="icon-pencil"></i>嘻嘻哈哈的生活</a></li>

                    </ul>
                </div>

            </li>
            <li><a href="/random.asp" id="A1" title="随机浏览其它用户主页">随便看看</a>

            </li>
            <li class=" "><a href="/tour/">我的百科</a></li>
            <li><a href="/promotions/">退出</a></li>
        </ul>


    </div>
</div>
