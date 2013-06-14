<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Eparse.UI._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/master.css" rel="stylesheet" />
    <script src="script/lib/jquery-1.9.1.js"></script>
    <script src="script/picturefill.js"></script>
    <script src="script/lib/jquery.tipsy.js"></script>
    <script>
        $().ready(function () {
            $('ol.multi-grid li a.zoom').each(function () {
                var link = $(this);
                link.tipsy({
                    gravity: 'n',
                    html: true,
                    title: function () { return link.closest('li').find('div.tipsy-player').html(); }
                });
            });
            $('ol.multi-grid li a.zoom').mouseenter(function () {
                $(this).find("strong").animate({
                    opacity: "1"
                }, 500);
            });
            $('ol.multi-grid li a.zoom').mouseleave(function () {
                $(this).find("strong").animate({
                    opacity: "0"
                }, 500);
            });
            $('.dribbble-shot').mouseenter(function () {
                $(this).find(".dribbble-over").animate({
                    opacity: "1"
                }, 500);
            });
            $('.dribbble-shot').mouseleave(function () {
                $(this).find(".dribbble-over").animate({
                    opacity: "0"
                }, 500);
            });

        });


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div  class="content">
        <img src="images/eparse.png" /><p><span>A few (million) of your favorite things.</span></p>
        <p>
            <a class="btn btn-primary btn-large" type="button">Large button</a>
            <a class="btn btn-success btn-large hidden-phone hidden-tablet" type="button">Large button</a>
        </p>

    </div>

    <div class="multi group">

        <ol class="dribbbles group">
            <li id="screenshot-1102756" class="group ">
                <div class="dribbble">
                    <div class="dribbble-shot">
                        <div class="dribbble-img">
                            <a href="/shots/1102756-Close-is-hiring" class="dribbble-link">
                                <div data-picture="" data-alt="Close is hiring">
                                    <div data-src="//dribbble.s3.amazonaws.com/users/14268/screenshots/1102756/hiring_teaser.png"></div>
                                    <div data-src="//dribbble.s3.amazonaws.com/users/14268/screenshots/1102756/hiring_1x.png" data-media="(-webkit-min-device-pixel-ratio: 1.5),
       (min--moz-device-pixel-ratio: 1.5),
       (-o-min-device-pixel-ratio: 3/2),
       (min-device-pixel-ratio: 1.5),
       (min-resolution: 1.5dppx)">
                                    </div>

                                    <img alt="Close is hiring" src="//dribbble.s3.amazonaws.com/users/14268/screenshots/1102756/hiring_teaser.png" data-pinit="registered">
                                </div>
                            </a>
                            <a href="/shots/1102756-Close-is-hiring" class="dribbble-over" style="opacity: 0;"><strong>Close is hiring</strong>
                                <span class="comment">CLOSE is hiring Android developers email ryan@close.com 

This is my first little 3D project! I've always wanted to learn me some 3D but never had a chance. ...</span>

                                <em class="timestamp">about 9 hours ago</em>
                            </a>
                        </div>
                        <ul class="tools group" style="visibility: visible;">
                            <li class="fav">
                                <a href="/shots/1102756-Close-is-hiring/fans" title="See fans of this screenshot">196</a>
                            </li>
                            <li class="cmnt">
                                <a href="/shots/1102756-Close-is-hiring#comments" title="View comments on this screenshot">32</a>
                            </li>
                            <li class="views">1703</li>
                        </ul>

                    </div>
                    <div class="extras">
                        <a href="/shots/1102756-Close-is-hiring/rebounds">
                            <span rel="tipsy" class="rebound-mark has-rebounds" original-title="This shot has rebounds.">0
                            </span>
                        </a><a href="/">
                            <span rel="tipsy" class="rebound-mark is-rebound" original-title="This shot is a rebound (reply) of another shot. The icon links to the original.">
                                <img alt="Rebound" height="16" src="/images/icon-rebound-2x.png?1370463823" width="16">
                            </span>
                        </a><span rel="tipsy" class="attachments-mark" style="display: inline;" original-title="This shot has attachments">
                            <img alt="Attachments" height="16" src="/images/icon-attach-16-2x.png?1370463823" width="16">
                        </span>
                    </div>
                </div>

                <h2>
                    <span class="attribution-user">
                        <a href="/lobanovskiy" class="url" rel="contact" title="Eddie Lobanovskiy">
                            <img alt="Eddie Lobanovskiy" class="photo" src="//dribbble.s3.amazonaws.com/users/14268/avatars/original/me.jpg?1335028411">
                            Eddie Lobanovskiy</a>
                        <a href="/account/pro" class="badge-link">
                            <span class="badge badge-pro">Pro</span>
                        </a>
                    </span>
                </h2>
            </li>

        </ol>

        <ol class="multi-grid">
            <li class="multi-thumb">
                <a href="/shots/1102774-Economist-GMAT-app" class="zoom" original-title="">
                    <strong style="opacity: 0;"><span>159</span></strong>
                    <img alt="Economist GMAT app" src="//dribbble.s3.amazonaws.com/users/40433/screenshots/1102774/iphoneapp_dribbble_teaser.png">
                </a>
                <div class="tipsy-player">
                    <span class="tipsy-player-link"><a href="/haraldurthorleifsson" class="url" rel="contact" title="Haraldur Thorleifsson">
                        <div data-picture="" data-alt="Haraldur Thorleifsson" data-class="photo">
                            <div data-src="//dribbble.s3.amazonaws.com/users/40433/avatars/small/522460_10151264681639111_1718983012_n.jpg?1360552224"></div>
                            <div data-src="//dribbble.s3.amazonaws.com/users/40433/avatars/normal/522460_10151264681639111_1718983012_n.jpg?1360552224" data-media="(min-width: 768px) and (-webkit-min-device-pixel-ratio: 1.5),
       (min--moz-device-pixel-ratio: 1.5),
       (-o-min-device-pixel-ratio: 3/2),
       (min-device-pixel-ratio: 1.5),
       (min-resolution: 1.5dppx)">
                            </div>

                            <img alt="Haraldur Thorleifsson" class="photo" src="//dribbble.s3.amazonaws.com/users/40433/avatars/small/522460_10151264681639111_1718983012_n.jpg?1360552224">
                        </div>
                        Haraldur Thorleifsson</a></span>
                </div>
            </li>
            <li class="multi-thumb">
                <a href="/shots/1102750-iPhone-Dialer-App" class="zoom" original-title="">
                    <strong style="opacity: 0;"><span>152</span></strong>
                    <img alt="iPhone Dialer App" src="//dribbble.s3.amazonaws.com/users/34556/screenshots/1102750/iphone-dialer_teaser.jpg">
                </a>
                <div class="tipsy-player">
                    <span class="tipsy-player-link"><a href="/KreativaStudio" class="url" rel="contact" title="Kreativa Studio">
                        <div data-picture="" data-alt="Kreativa Studio" data-class="photo">
                            <div data-src="//dribbble.s3.amazonaws.com/users/34556/avatars/original/KS.jpg?1320332401"></div>
                            <div data-src="//dribbble.s3.amazonaws.com/users/34556/avatars/original/KS.jpg?1320332401" data-media="(min-width: 768px) and (-webkit-min-device-pixel-ratio: 1.5),
       (min--moz-device-pixel-ratio: 1.5),
       (-o-min-device-pixel-ratio: 3/2),
       (min-device-pixel-ratio: 1.5),
       (min-resolution: 1.5dppx)">
                            </div>
                            <noscript>
		&lt;img alt="Kreativa Studio" class="photo" src="//dribbble.s3.amazonaws.com/users/34556/avatars/original/KS.jpg?1320332401" /&gt;
	</noscript>
                            <img alt="Kreativa Studio" class="photo" src="//dribbble.s3.amazonaws.com/users/34556/avatars/original/KS.jpg?1320332401">
                        </div>
                        Kreativa Studio</a></span>
                </div>
            </li>
            <li class="multi-thumb">
                <a href="/shots/1102681-Negative-Zombies" class="zoom" original-title="">
                    <strong style="opacity: 0;"><span>124</span></strong>
                    <img alt="Negative Zombies" src="//dribbble.s3.amazonaws.com/users/74401/screenshots/1102681/negative-zombies1_teaser.png">
                </a>
                <div class="tipsy-player">
                    <span class="tipsy-player-link"><a href="/Stevan" class="url" rel="contact" title="Stevan Rodic">
                        <div data-picture="" data-alt="Stevan Rodic" data-class="photo">
                            <div data-src="//dribbble.s3.amazonaws.com/users/74401/avatars/original/S.jpg?1321457566"></div>
                            <div data-src="//dribbble.s3.amazonaws.com/users/74401/avatars/original/S.jpg?1321457566" data-media="(min-width: 768px) and (-webkit-min-device-pixel-ratio: 1.5),
       (min--moz-device-pixel-ratio: 1.5),
       (-o-min-device-pixel-ratio: 3/2),
       (min-device-pixel-ratio: 1.5),
       (min-resolution: 1.5dppx)">
                            </div>
                            <noscript>
		&lt;img alt="Stevan Rodic" class="photo" src="//dribbble.s3.amazonaws.com/users/74401/avatars/original/S.jpg?1321457566" /&gt;
	</noscript>
                            <img alt="Stevan Rodic" class="photo" src="//dribbble.s3.amazonaws.com/users/74401/avatars/original/S.jpg?1321457566">
                        </div>
                        Stevan Rodic</a></span>
                </div>
            </li>
            <li class="multi-thumb">
                <a href="/shots/1102928-Buck-Logo" class="zoom" original-title="">
                    <strong style="opacity: 0;"><span>108</span></strong>
                    <img alt="Buck Logo" src="//dribbble.s3.amazonaws.com/users/1019/screenshots/1102928/buck_teaser.png">
                </a>
                <div class="tipsy-player">
                    <span class="tipsy-player-link"><a href="/Larkef" class="url" rel="contact" title="Jord Riekwel">
                        <div data-picture="" data-alt="Jord Riekwel" data-class="photo">
                            <div data-src="//dribbble.s3.amazonaws.com/users/1019/avatars/small/Larkef.png?1362063245"></div>
                            <div data-src="//dribbble.s3.amazonaws.com/users/1019/avatars/normal/Larkef.png?1362063245" data-media="(min-width: 768px) and (-webkit-min-device-pixel-ratio: 1.5),
       (min--moz-device-pixel-ratio: 1.5),
       (-o-min-device-pixel-ratio: 3/2),
       (min-device-pixel-ratio: 1.5),
       (min-resolution: 1.5dppx)">
                            </div>
                            <noscript>
		&lt;img alt="Jord Riekwel" class="photo" src="//dribbble.s3.amazonaws.com/users/1019/avatars/small/Larkef.png?1362063245" /&gt;
	</noscript>
                            <img alt="Jord Riekwel" class="photo" src="//dribbble.s3.amazonaws.com/users/1019/avatars/small/Larkef.png?1362063245">
                        </div>
                        Jord Riekwel</a></span>
                </div>
            </li>
            <li class="multi-thumb">
                <a href="/shots/1102900-Group-widget" class="zoom" original-title="">
                    <strong style="opacity: 0;"><span>87</span></strong>
                    <img alt="Group widget" src="//dribbble.s3.amazonaws.com/users/31398/screenshots/1102900/untitled-36_teaser.png">
                </a>
                <div class="tipsy-player">
                    <span class="tipsy-player-link"><a href="/juliakhusainova" class="url" rel="contact" title="Julia Khusainova">
                        <div data-picture="" data-alt="Julia Khusainova" data-class="photo">
                            <div data-src="//dribbble.s3.amazonaws.com/users/31398/avatars/original/juliakhusainova-gravatar-copy.png?1333395342"></div>
                            <div data-src="//dribbble.s3.amazonaws.com/users/31398/avatars/original/juliakhusainova-gravatar-copy.png?1333395342" data-media="(min-width: 768px) and (-webkit-min-device-pixel-ratio: 1.5),
       (min--moz-device-pixel-ratio: 1.5),
       (-o-min-device-pixel-ratio: 3/2),
       (min-device-pixel-ratio: 1.5),
       (min-resolution: 1.5dppx)">
                            </div>
                            <noscript>
		&lt;img alt="Julia Khusainova" class="photo" src="//dribbble.s3.amazonaws.com/users/31398/avatars/original/juliakhusainova-gravatar-copy.png?1333395342" /&gt;
	</noscript>
                            <img alt="Julia Khusainova" class="photo" src="//dribbble.s3.amazonaws.com/users/31398/avatars/original/juliakhusainova-gravatar-copy.png?1333395342">
                        </div>
                        Julia Khusainova</a></span>
                </div>
            </li>
            <li class="multi-thumb">
                <a href="/shots/1102926-Wurlitzer-Ios-Icon" class="zoom" original-title="">
                    <strong style="opacity: 0;"><span>83</span></strong>
                    <img alt="Wurlitzer Ios Icon" src="//dribbble.s3.amazonaws.com/users/102849/screenshots/1102926/wurlitzer_ios_icon_teaser.jpg">
                </a>
                <div class="tipsy-player">
                    <span class="tipsy-player-link"><a href="/AlexBender" class="url" rel="contact" title="ALEX BENDER">
                        <div data-picture="" data-alt="ALEX BENDER" data-class="photo">
                            <div data-src="//dribbble.s3.amazonaws.com/users/102849/avatars/small/Layer-0.jpg?1363612984"></div>
                            <div data-src="//dribbble.s3.amazonaws.com/users/102849/avatars/normal/Layer-0.jpg?1363612984" data-media="(min-width: 768px) and (-webkit-min-device-pixel-ratio: 1.5),
       (min--moz-device-pixel-ratio: 1.5),
       (-o-min-device-pixel-ratio: 3/2),
       (min-device-pixel-ratio: 1.5),
       (min-resolution: 1.5dppx)">
                            </div>
                            <noscript>
		&lt;img alt="ALEX BENDER" class="photo" src="//dribbble.s3.amazonaws.com/users/102849/avatars/small/Layer-0.jpg?1363612984" /&gt;
	</noscript>
                            <img alt="ALEX BENDER" class="photo" src="//dribbble.s3.amazonaws.com/users/102849/avatars/small/Layer-0.jpg?1363612984">
                        </div>
                        ALEX BENDER</a></span>
                </div>
            </li>
            <li class="multi-thumb">
                <a href="/shots/1102834-Triplagent-App-Design-2013" class="zoom" original-title="">
                    <strong style="opacity: 0;"><span>65</span></strong>
                    <img alt="Triplagent App Design 2013" src="//dribbble.s3.amazonaws.com/users/345550/screenshots/1102834/triplagent_app_design_2013_teaser.jpg">
                </a>
                <div class="tipsy-player">
                    <span class="tipsy-player-link"><a href="/TinaDavar" class="url" rel="contact" title="Tina Davar">
                        <div data-picture="" data-alt="Tina Davar" data-class="photo">
                            <div data-src="//dribbble.s3.amazonaws.com/users/345550/avatars/small/25dafb405a40036d368cef50f47195d3_normal.jpeg?1370443747"></div>
                            <div data-src="//dribbble.s3.amazonaws.com/users/345550/avatars/normal/25dafb405a40036d368cef50f47195d3_normal.jpeg?1370443747" data-media="(min-width: 768px) and (-webkit-min-device-pixel-ratio: 1.5),
       (min--moz-device-pixel-ratio: 1.5),
       (-o-min-device-pixel-ratio: 3/2),
       (min-device-pixel-ratio: 1.5),
       (min-resolution: 1.5dppx)">
                            </div>
                            <noscript>
		&lt;img alt="Tina Davar" class="photo" src="//dribbble.s3.amazonaws.com/users/345550/avatars/small/25dafb405a40036d368cef50f47195d3_normal.jpeg?1370443747" /&gt;
	</noscript>
                            <img alt="Tina Davar" class="photo" src="//dribbble.s3.amazonaws.com/users/345550/avatars/small/25dafb405a40036d368cef50f47195d3_normal.jpeg?1370443747">
                        </div>
                        Tina Davar</a></span>
                </div>
            </li>
            <li class="multi-thumb">
                <a href="/shots/1102922-Robert-De-Niro" class="zoom" original-title="">
                    <strong style="opacity: 0;"><span>54</span></strong>
                    <img alt="Robert De Niro" src="//dribbble.s3.amazonaws.com/users/133873/screenshots/1102922/deniro_teaser.png">
                </a>
                <div class="tipsy-player">
                    <span class="tipsy-player-link"><a href="/ChrisHam" class="url" rel="contact" title="Chris Ham">
                        <div data-picture="" data-alt="Chris Ham" data-class="photo">
                            <div data-src="//dribbble.s3.amazonaws.com/users/133873/avatars/small/e88bc3bccdf411e28d1322000a1fb079_7.jpg?1370450828"></div>
                            <div data-src="//dribbble.s3.amazonaws.com/users/133873/avatars/normal/e88bc3bccdf411e28d1322000a1fb079_7.jpg?1370450828" data-media="(min-width: 768px) and (-webkit-min-device-pixel-ratio: 1.5),
       (min--moz-device-pixel-ratio: 1.5),
       (-o-min-device-pixel-ratio: 3/2),
       (min-device-pixel-ratio: 1.5),
       (min-resolution: 1.5dppx)">
                            </div>
                            <noscript>
		&lt;img alt="Chris Ham" class="photo" src="//dribbble.s3.amazonaws.com/users/133873/avatars/small/e88bc3bccdf411e28d1322000a1fb079_7.jpg?1370450828" /&gt;
	</noscript>
                            <img alt="Chris Ham" class="photo" src="//dribbble.s3.amazonaws.com/users/133873/avatars/small/e88bc3bccdf411e28d1322000a1fb079_7.jpg?1370450828">
                        </div>
                        Chris Ham</a></span>
                </div>
            </li>

        </ol>

    </div>
</asp:Content>
