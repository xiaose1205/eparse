<%@ Page Title="" Language="C#" MasterPageFile="~/me/Eparseme.Master" AutoEventWireup="true" CodeBehind="Me.aspx.cs" Inherits="Eparse.UI.me.Me" %>

<%@ Register Src="~/me/MeControl.ascx" TagPrefix="uc1" TagName="MeControl" %>
<%@ Register Src="~/me/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<link rel="stylesheet" href="http://about.pinterest.com/assets/css/presentation.css" type="text/css" media="screen">--%>

    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="../css/index.css" rel="stylesheet" />
    <link href="../css/common.css" rel="stylesheet" />
    <link href="../css/eparse_me.css" rel="stylesheet" />
    <link href="../css/eparse_control.css" rel="stylesheet" />
    <link href="../css/colorpicker.css" rel="stylesheet" />
    <script src="../script/lib/jquery-1.9.1.js"></script>
  
    <script src="../script/mecontrol.js"></script>
    <script src="../script/lib/bootstrap.min.js"></script>
    <script src="../script/lib/colorpicker.js"></script>
    <script src="../script/lib/jcarousellite_1.0.1.js"></script>
    <script src="../script/lib/jquery.event.drag.js"></script>
    <script src="../script/lib/uploader/header.js"></script>
    <script src="../script/lib/uploader/util.js"></script>
    <script src="../script/lib/uploader/features.js"></script>
    <script src="../script/lib/uploader/button.js"></script>
    <script src="../script/lib/uploader/ajax.requester.js"></script>
    <script src="../script/lib/uploader/deletefile.ajax.requester.js"></script>
    <script src="../script/lib/uploader/handler.base.js"></script>
    <script src="../script/lib/uploader/window.receive.message.js"></script>
    <script src="../script/lib/uploader/handler.form.js"></script>
    <script src="../script/lib/uploader/handler.xhr.js"></script>
    <script src="../script/lib/uploader/uploader.basic.js"></script>
    <script src="../script/lib/uploader/dnd.js"></script>
    <script src="../script/lib/uploader/uploader.js"></script>
    <script src="../script/lib/uploader/jquery-plugin.js"></script>
    <link href="../css/fineuploader.css" rel="stylesheet" />

    <link href="../css/jslider.css" rel="stylesheet" />
    <script src="../script/lib/jquery.dependClass.js"></script>
    <script src="../script/lib/jquery.slider.js"></script>
    <style type="text/css">
        #carousel_info li.mydefault div.me_info {
            background: rgb(255, 255, 255);
            left: 150px;
            top: 0px;
            width: 340px;
            height: 100%;
            position: absolute;
            box-shadow: 0px 0px 3px #666;
            /*实现FF背景透明*/
            /*background:  none repeat scroll 0 0!important; 
            filter: Alpha(opacity=40);*/
            transition: 0.5s ease-in;
            -webkit-transition: all .5s ease-in;
            -moz-transition: all .5s ease-in;
            padding-top: 5px;
        }

        #carousel_info li.mydefault div.carousel_item {
            padding: 5px 20px;
            width: 100%;
            height: 100%;
        }

        #carousel_info li.mydefault div.carousel_item h4 {
            color: rgb(0, 0, 0);
            line-height: 32px;
            font-family: "Abril Text Regular", serif;
            font-size: 22px;
            font-weight: normal;
            margin-bottom: 10px;
        }

        #carousel_info li.mydefault div.carousel_item blockquote {
            line-height: 24px;
            font-family: "Adelle Sans Regular", sans-serif;
            font-size: 16px;
        }

        #carousel_info li.mydefault div.carousel_item .me_top {
            padding: 0px 0px 0px 5px;
            font-family: "Adelle Sans Regular", sans-serif;
            font-size: 12px;
            margin-top: 15px;
            margin-bottom: 15px;
        }

        #carousel_info li.mydefault div.carousel_item .me_top .me_avatar {
            background: no-repeat 50% 50%;
            float: right;
            width: 40px;
            height: 40px;
        }

        #carousel_info li.mydefault div.carousel_item .me_top .me_nameinfo {
            float: left;
            margin-left: 3px;
        }

        #carousel_info li.mydefault div.carousel_item .me_top .me_avatar img {
            border-radius: 20px;
            border: 1px solid rgba(255, 255, 255, .5);
            box-shadow: inset 0 1px 4px rgba(0, 0, 0, .25);
            overflow: hidden;
        }

        #carousel_info li.mydefault div.carousel_item .me_top strong {
            font-family: "Adelle Sans Semibold", sans-serif;
            display: block;
        }

        #carousel_info li.mydefault div.carousel_item .me_top .me_title {
            font-family: "Adelle Sans Semibold", sans-serif;
            
            font-size: 26px;
        }

        #carousel_info li.mydefault div.carousel_item .me_intrc {
        }

        #carousel_info li.mydefault div.carousel_item .me_tag {
            margin-bottom: 10px;
        }

        #carousel_info li.mydefault div.carousel_item span.board {
        }



        #carousel_info li.qinchun div.me_info {
            background: rgb(255, 255, 255);
            left: 0px;
            bottom: 0px;
            width: 100%;
            height: 200px;
            position: absolute;
            box-shadow: 0px 0px 3px #666;
            /*实现FF背景透明*/
            /*background:  none repeat scroll 0 0!important; 
            filter: Alpha(opacity=40);*/
            transition: 0.5s ease-in;
            -webkit-transition: all .5s ease-in;
            -moz-transition: all .5s ease-in;
            padding-top: 5px;
        }

        #carousel_info li.qinchun div.carousel_item {
            padding: 5px 20px;
            width: 100%;
            height: 100%;
        }

        #carousel_info li.qinchun div.carousel_item h4 {
            color: rgb(0, 0, 0);
            line-height: 32px;
            font-family: "Abril Text Regular", serif;
            font-size: 22px;
            font-weight: normal;
            margin-bottom: 10px;
        }

        #carousel_info li.qinchun div.carousel_item blockquote {
            line-height: 24px;
            font-family: "Adelle Sans Regular", sans-serif;
            font-size: 16px;
        }

        #carousel_info li.qinchun div.carousel_item .me_top {
            padding: 0px 0px 0px 5px;
            font-family: "Adelle Sans Regular", sans-serif;
            font-size: 12px;
            margin-top: 15px;
            margin-bottom: 15px;
        }

        #carousel_info li.qinchun div.carousel_item .me_top .me_avatar {
            background: no-repeat 50% 50%;
            float: left;
            width: 40px;
            height: 40px;
        }

        #carousel_info li.qinchun div.carousel_item .me_top .me_nameinfo {
            float: left;
            margin-left: 3px;
        }

        #carousel_info li.qinchun div.carousel_item .me_top .me_avatar img {
            border-radius: 20px;
            border: 1px solid rgba(255, 255, 255, .5);
            box-shadow: inset 0 1px 4px rgba(0, 0, 0, .25);
            overflow: hidden;
        }

        #carousel_info li.qinchun div.carousel_item .me_top strong {
            font-family: "Adelle Sans Semibold", sans-serif;
            display: block;
        }

        #carousel_info li.qinchun div.carousel_item .me_top .me_title {
            font-family: "Adelle Sans Semibold", sans-serif;
            display: block;
            line-height: 32px;
            font-size: 26px;
        }

        #carousel_info li.qinchun div.carousel_item .me_intrc {
        }

        #carousel_info li.qinchun div.carousel_item .me_tag {
            margin-bottom: 10px;
        }

        #carousel_info li.qinchun div.carousel_item span.board {
        }

        #carousel_info li.selected {
            display: block;
        }

        span.me_info-move {
            position: absolute;
            top: 0px;
            right: 0px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:MeControl runat="server" ID="MeControl" />
    <div class="epase_action">
        <a class="btn btn-info"><i class="icon-star"></i>12赞</a>
        <a class="btn btn-info"><i class="icon-heart"></i>23关注</a>
        <span class="action_close"></span>
    </div>
    <section id="carousel">
        <uc1:Navigation runat="server" ID="Navigation" />

        <div id="carousel_container">

            <div id="carousel_content" style="width: 100%; height: 100%;" carousel_bg_width="960">
                <ul id="carousel_info">
                    <li class="me_page mydefault">
                        <a class="carousel_bg"
                            style='left: 0px; background-image: url("/assets/me/me.jpg"); background-position: 50% 0px; background-repeat: repeat repeat; height: 100%;'></a>

                        <div class="me_info"   id="mydefault_info">
                            <span class="me_info-move"  id="mydefault_drag"><i class="icon-move"></i></span>
                            <div class="carousel_item ">
                                <div class="me_top clearfix">
                                    <div class="me_avatar">
                                        <a>
                                            <img width="40" height="40" src="http://about.pinterest.com/assets/img/home/caro_avatar_project.jpg" />
                                        </a>
                                    </div>
                                    <div class="me_nameinfo">
                                        <strong class="me_name">王梓轩</strong>
                                        <a class="me_title">青春没有彩排</a>
                                    </div>

                                </div>
                                <ul class="me_tag list ">
                                    <li><a>Art director</a></li>
                                    <li><a>blogger</a></li>
                                    <li><a>photographer</a></li>
                                </ul>
                                <blockquote class="me_intrc">
                                    <span>孩子在0-6岁时存在各种各样的敏感期，所谓敏感期是指0-6岁的成长过程中，儿童受内在生命力的驱使，在某个时间段内，反复操作某一动作或反复学习某一项能力，并且学习能力特别强的时期。有依恋形成的敏感期、口腔敏感期、手腿脚等动作的敏感期、语言的敏感期、细微事物的敏感期、肌肤触摸的敏感期、执拗和完美的敏感期、秩序的敏感期、数学敏感期、绘画敏感期等等。
    出生不久持续到一岁多一点，是口腔敏感期。无论成人怎么阻止，孩子总把手放进嘴巴，而且吃得津津有味。成人千万不要认为不干净而去阻止孩子，否则会留下心理隐患。成人要做的就是保证入口的东西相对干净就行，而且最好能提供不同的东西让孩子用口腔去探索！
                                    </span>
                                    <a>更多见我的百科</a>

                                </blockquote>
                                <hr />
                                <ul class="me_web">
                                    <li>232323</li>
                                    <li></li>
                                </ul>
                            </div>


                        </div>


                    </li>
                    <li class="me_page qinchun selected">
                        <a class="carousel_bg"
                            style='left: 0px; background-image: url("/assets/me/kinlochard.jpg"); background-position: 50% 0px; background-repeat: repeat repeat; height: 100%;'></a>

                        <div class="me_info">
                            <div class="carousel_item  ">
                                <div class="me_top clearfix">
                                    <div class="me_avatar">
                                        <a>
                                            <img width="40" height="40" src="http://about.pinterest.com/assets/img/home/caro_avatar_project.jpg" />
                                        </a>
                                    </div>
                                    <div class="me_nameinfo">
                                        <strong class="me_name">王梓轩</strong>
                                        <a class="me_title">青春没有彩排</a>
                                    </div>

                                </div>
                                <ul class="me_tag list ">
                                    <li><a>Art director</a></li>
                                    <li><a>blogger</a></li>
                                    <li><a>photographer</a></li>
                                </ul>
                                <blockquote class="me_intrc">
                                    <span>华尔街日报消息，一名HTC高层在接受采访时表示，HTC One手机自上市以来共售出了大约500万台，这个数据应当可以延缓HTC下沉的速度，不过另一方面也确实令人担忧，凭借这样的水平似乎无法与三星相提并论。三星的旗舰设备Galaxy S4近期刚刚宣布在不到一个月的时间内就售出了1000万台。</span>
                                    <a>更多见我的百科</a>

                                </blockquote>
                                <hr />
                                <ul class="me_web">
                                    <li>232sdfs323</li>
                                    <li></li>
                                </ul>
                            </div>

                        </div>


                    </li>
                </ul>
            </div>

            <div class="carousel_mask clickable" id="carousel_mask_left" val="-1" cmd="caroRelativeNav">
                <div id="carousel_mask_left_arrow" val="1" cmd="caroRelativeNav"></div>
            </div>
            <%--clickable--%>
            <div class="carousel_mask clickable " id="carousel_mask_right" val="1" cmd="caroRelativeNav">
                <div id="carousel_mask_right_arrow" val="1" cmd="caroRelativeNav"></div>
            </div>

        </div>

    </section>
</asp:Content>
