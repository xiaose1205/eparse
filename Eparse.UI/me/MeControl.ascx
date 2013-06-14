<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MeControl.ascx.cs" Inherits="Eparse.UI.me.MeControl" %>


<div class="ui-draggable" id="con" style="width: 500px;">


    <div id="con-drag">
        <div class="conp-header " id="con-about-header">

            <ul class="conp-header-top">
                <li>自定义我的页面</li>
                <li class="conp_ac"><a id="backgroud">背景图</a></li>
                <li class="conp_ac active"><a id="myinfo">个人信息</a></li>
                <li class="conp_ac"><a id="colorinfo">色彩</a></li>
                <li class="conp_ac"><a id="fontinfo">字体</a></li>
                <li class="conp_ac"><a id="socialinfo">社交网络</a></li>
            </ul>
        </div>
        <span class="con-sprites con-icon-minimize" id="con-drag-minimize"></span>
    </div>

    <div class="conp">
        <div class="con-binder">
            <div class="con-slider" style="display: none;" dataid="myinfo">
                <div class="conp-navigation con-slider-block" id="con-about-navigation">
                    <div class="conp-nav paid" id="conp-nav-about-information" data="con-icon-information">
                        <div class="conp-nav-icon con-sprites con-icon-information"></div>
                        <div class="conp-nav-title">个人信息</div>
                        <div class="conp-nav-description">编写个人简介或描述</div>
                    </div>
                    <div class="con-container-section">
                        <div class="con-container-section">
                            <div class="con-section-header">我的头像</div>
                            <label class="radio inline">
                                <input type="radio" id="myicon1" value="0" name="myicon">
                                居左
                            </label>
                            <label class="radio inline">
                                <input type="radio" id="myicon2" value="1" name="myicon">
                                居右
                            </label>
                            <label class="radio inline">
                                <input type="radio" id="myicon3" value="2" name="myicon">
                                隐藏
                            </label>
                        </div>
                        <div class="con-container-section">
                            <div class="con-section-header">姓名</div>
                            <input name="edit-name" id="con-about-information-name" type="text">
                        </div>
                        <div class="con-container-section">
                            <div class="con-section-header">标题 </div>
                            <input name="edit-tag" id="con-about-information-title" type="text">
                        </div>
                        <div class="con-container-section">
                            <div class="con-section-header">简介</div>
                            <textarea rows="3"></textarea>
                        </div>
                        <div class="con-container-section">
                            <div class="con-section-header">标签<span id="con-about-information-tag-tip" style="color: pink; margin-left: 20px; display: none;">标签用空格分隔，最多输入5个</span></div>
                            <input name="edit-tag" id="con-about-information-tag" type="text">
                        </div>
                        <div class="con-container-section">
                            <div class="con-section-header">个性图片</div>
                            <div id="thumbnail-info-uploader"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="con-slider" style="display: none;" dataid="colorinfo">
                <div class="conp-navigation con-slider-block">
                    <div class="con-container-section" id="con-design-colors-custom">
                        <div class="conp-nav paid" id="Div1" data="con-icon-information">
                            <div class="conp-nav-icon con-sprites con-icon-information"></div>
                            <div class="conp-nav-title">个人信息</div>
                            <div class="conp-nav-description">编写个人简介或描述</div>
                        </div>
                        <div class="con-container-section">
                            <div class="con-section-header">背景</div>
                            <div class="con-design-colorslist">
                                <div class="con-design-colorsitem" id="con-background_0" alpha="100"><a class="con-design-color" id="background_0" href="#" rel=".carousel_bg" dataid="bg"></a>主页 </div>
                                <div class="con-design-colorsitem" id="con-background_1" alpha="0"><a class="con-design-color" id="background_1" href="#" rel=".me_info" dataid="bg"></a>资料 </div>
                                <div class="con-design-colorsitem" style="width: 250px;">
                                    <span style="line-height: 20px; padding-top: 15px; height: 10px; display: block; margin-bottom: 10px; float: left;">透明度：</span>
                                    <div class="con-design-colorsitem" style="padding-top: 15px; margin-left: 20px; width: 150px; float: left;">
                                        <input type="text" class="slider" id="me_info_opt" value="4" style="width: 150px">
                                    </div>
                                </div>
                            </div>
                            <div class="con-section-header">文本</div>
                            <div class="con-design-colorslist">
                                <div class="con-design-colorsitem" id="con-color_0"><a class="con-design-color" id="color_0" href="#" rel=".me_name"></a>姓名 </div>
                                <div class="con-design-colorsitem" id="con-color_1"><a class="con-design-color" id="color_1" href="#" rel=".me_tag"></a>标签 </div>
                                <div class="con-design-colorsitem" id="con-color_2"><a class="con-design-color" id="color_2" href="#" rel=".me_title"></a>标题 </div>
                                <div class="con-design-colorsitem" id="con-color_3"><a class="con-design-color" id="color_3" href="#" rel=".me_intrc"></a>简介 </div>
                                <div class="con-design-colorsitem" id="con-color_4"><a class="con-design-color" id="color_4" href="#" rel="a"></a>链接  </div>
                                <!--              
              <div id="con-color_2-picker" class="con-design-colorsitem"> <a href="#" class="con-design-color"></a> 链接 </div>-->
                            </div>
                            <div class="con-container-section">
                                <div class="con-section-header">个性资料窗口设置</div>
                                <div class="clearfix">
                                    <div style="float: right; margin-right: 60px; font-size: 12px; margin-top: 15px;">
                                        <span>宽度:</span>
                                        <input type="text" class="info_deta" style="width: 60px;" dataid="width">

                                        <span>高度:</span>
                                        <input type="text" class="info_deta" style="width: 60px;" dataid="height">
                                    </div>
                                    <div class="btn-toolbar" style="float: left;">
                                        <div class="btn-group">
                                            <a class="btn con-info-input" href="#" rel="0"><i class="icon-hand-left"></i></a>
                                            <a class="btn con-info-input" href="#" rel="1"><i class="icon-hand-up"></i></a>
                                            <a class="btn con-info-input" href="#" rel="2"><i class="icon-hand-right"></i></a>
                                            <a class="btn con-info-input" href="#" rel="3"><i class="icon-hand-down"></i></a>
                                            <a class="btn con-info-input" href="#" rel="4"><i class="icon-move"></i></a>

                                        </div>

                                    </div>

                                </div>
                                <div class="clearfix">
                                    <div class="con-section-header ">个性资料效果设置</div>
                                    <div id="controller-design-effects-corners" class="con-toggle-icons-style">
                                        <a href="#" id="controller-design-effects-corners-none" class=" con-toggle-icon con-toggle-icon-row con-sprites con-toggle-icon con-icon-corners-none"></a>
                                        <a href="#" id="controller-design-effects-corners-small" class="con-toggle-icon con-toggle-icon-row con-sprites con-icon-corners-small   selected"></a>
                                        <a href="#" id="controller-design-effects-corners-large" class="con-toggle-icon  con-toggle-icon-row con-sprites con-toggle-icon con-icon-corners-large"></a>
                                    </div>
                                    <div id="controller-design-effects-shadows" class="con-toggle-icons-style">
                                        <a href="#" id="controller-design-effects-shadows-none" class="con-toggle-icon con-toggle-icon-row con-sprites con-toggle-icon con-icon-shadows-none"></a>
                                        <a href="#" id="controller-design-effects-shadows-small" class="con-toggle-icon con-toggle-icon-row con-sprites  con-toggle-icon con-icon-shadows-small  selected"></a>
                                        <a href="#" id="controller-design-effects-shadows-large" class="con-toggle-icon con-toggle-icon-row con-sprites con-toggle-icon con-icon-shadows-large"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <div class="con-slider" dataid="backgroud">
                <div class="conp-navigation con-slider-block">
                    <div class="con-container-section" id="Div2">
                        <div class="conp-nav paid" id="Div3" data="con-icon-information">
                            <div class="conp-nav-icon con-sprites con-icon-information"></div>
                            <div class="conp-nav-title">背景设置</div>
                            <div class="conp-nav-description">编写个人简介或描述</div>
                        </div>
                        <div class="con-container-section">
                            <div class="con-design-colorslist">
                                <div style="width: 110px; float: right;">
                                    <div id="con-design-backgrounds-options-alignment" class="con-container-section" style="display: block;">
                                        <div class="con-section-header">对齐方式</div>
                                        <div id="con-design-backgrounds-options-alignment-controls" class="con-toggle-icons">
                                            <a href="#" id="con-design-backgrounds-options-alignment-controls-0" class="con-toggle-icon con-toggle-icon-row con-sprites con-backgrounds-top-left"></a>
                                            <a href="#" id="con-design-backgrounds-options-alignment-controls-1" class="con-toggle-icon con-toggle-icon-row con-sprites con-backgrounds-top-center"></a>
                                            <a href="#" id="con-design-backgrounds-options-alignment-controls-2" class="con-toggle-icon con-toggle-icon-row con-sprites con-backgrounds-top-right"></a>
                                            <a href="#" id="con-design-backgrounds-options-alignment-controls-5" class="con-toggle-icon con-toggle-icon-row con-sprites con-backgrounds-bottom-left"></a>
                                            <a href="#" id="con-design-backgrounds-options-alignment-controls-4" class="con-toggle-icon con-toggle-icon-row con-sprites con-backgrounds-bottom-center"></a>
                                            <a href="#" id="con-design-backgrounds-options-alignment-controls-3" class="con-toggle-icon con-toggle-icon-row con-sprites con-backgrounds-bottom-right"></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="choose upload_pic" style="width: 350px; float: left;">
                                    <div class="clearfix">

                                        <div id="thumbnail-fine-uploader"></div>


                                        <p style="padding: 7px 0 0 20px; overflow: hidden; zoom: 1">JPG, GIF, or PNG. 图片最大为5MB.</p>
                                    </div>
                                    <p class="gray-medium">我们的最大可见背景图像尺寸为 1680 x1050像素</p>

                                    <label class="radio inline">
                                        普通<input name="background_scaling" class="con-toggle-input" value="0" type="radio" checked="checked">
                                    </label>
                                    <label class="radio inline">
                                        平铺<input name="background_scaling" class="con-toggle-input" value="1" type="radio">
                                    </label>
                                    <label class="radio inline">
                                        全屏<input name="background_scaling" class="con-toggle-input" value="2" type="radio"></label>
                                </div>

                            </div>

                            <div class="con-design-colorslist">
                                <div id="wallpaper-res" class="bg_saved_hide">
                                    <!-- str 使用过的背景 -->
                                    <div class="section carousel">
                                        <div class="con-section-header">您上传的背景</div>
                                        <div class="slider-wrap">
                                            <a id="bg_saved_prev" class="carousel-button carousel-prev" href="javascript:void(0);"></a>
                                            <a id="bg_saved_next" class="carousel-button carousel-next" href="javascript:void(0);"></a>
                                            <div id="saved-bg-wrap" style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 498px;">
                                                <ul class="slider-list clearfix" style="margin: 0px; padding: 0px; position: relative; list-style-type: none; z-index: 1; width: 498px; left: 0px;">
                                                    <li data-id="518a6bd57fd4ff4918000002" style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn/im/wallpaper/518a6b977fd4ff4918000000/cb0cee7f7beef8fcf739879cad1ab3c4_l.jpg">
                                                            <img src="http://about-me.cn/im/wallpaper/518a6b977fd4ff4918000000/cb0cee7f7beef8fcf739879cad1ab3c4_s.jpg" alt="">
                                                            <span class="remove-thumb">删除</span>
                                                        </a>

                                                    </li>
                                                    <li data-id="51973a8a7fd4ffee5a000001" class="" style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn/im/wallpaper/518a6b977fd4ff4918000000/ab8964db12297f7631e014643b47966e_l.jpg">
                                                            <img src="http://about-me.cn/im/wallpaper/518a6b977fd4ff4918000000/ab8964db12297f7631e014643b47966e_s.jpg" alt="">
                                                            <span class="remove-thumb">删除</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end 使用过的背景 -->
                                    <!-- str 图片背景列表 -->
                                    <div class="carousel section">

                                        <div class="con-section-header">图片库</div>
                                        <div class="slider-wrap">
                                            <a id="bg_store_prev" class="carousel-button carousel-prev" href="javascript:void(0);"></a>
                                            <a id="bg_store_next" class="carousel-button carousel-next" href="javascript:void(0);"></a>
                                            <div id="store-bg-wrap" style="visibility: visible; overflow: hidden; position: relative; z-index: 2; left: 0px; width: 498px;">
                                                <ul class="slider-list clearfix">
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/2.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/2-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/1.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/1-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/3.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/3-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/4.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/4-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/5.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/5-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/6.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/6-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/7.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/7-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/8.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/8-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;" class="">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/9.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/9-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/10.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/10-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/11.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/11-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/12.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/12-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/13.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/13-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/14.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/14-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/15.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/15-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/16.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/16-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/17.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/17-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/18.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/18-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;" class="thumb-wrap-curr">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/19.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/19-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;" class="">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/20.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/20-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;" class="">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/21.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/21-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/22.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/22-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/23.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/23-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/24.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/24-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/25.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/25-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/26.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/26-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/27.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/27-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/28.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/28-thumb.jpg" alt=""></a>
                                                    </li>
                                                    <li style="overflow: hidden; float: left;">
                                                        <a class="thumb-wrap" href="http://about-me.cn//img/im/wallpapers/29.jpg">
                                                            <img src="http://about-me.cn//img/im/wallpapers/29-thumb.jpg" alt=""></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end 图片背景列表 -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="con-slider" style="display: none" dataid="fontinfo">
                <div class="conp-navigation con-slider-block">
                    <div class="con-container-section" id="Div4">
                        <div class="conp-nav paid" id="Div5" data="con-icon-information">
                            <div class="conp-nav-icon con-sprites con-icon-information"></div>
                            <div class="conp-nav-title">背景设置</div>
                            <div class="conp-nav-description">编写个人简介或描述</div>
                        </div>
                 
                    <div class="con-container-section">


                        <div class="con-container-section">
                            <div>
                                <div class="con-section-header">
                                    姓名 
                                   <span>(12px)</span>
                                </div>
                                <div class="clearfix">
                                    <div style="float: right; margin-right: 40px; width: 200px;">
                                        <input type="text" id="me_name-font" class="slider con-fontsize" value="4" style="width: 150px">
                                    </div>
                                    <select class="con-font" dataid="me_name">
                                        <option selected="selected" value="宋体">宋体</option>
                                        <option value="黑体">黑体</option>
                                        <option value="楷体_GB2312">楷体</option>
                                        <option value="仿宋_GB2312">仿宋</option>
                                        <option value="隶书">隶书</option>
                                        <option value="幼圆">幼圆</option>
                                        <option value="Arial">Arial</option>
                                        <option value="Arial Black">Arial Black</option>
                                        <option value="Arial Narrow">Arial Narrow</option>
                                        <option value="Bradley Hand&#9;ITC">Bradley Hand ITC</option>
                                        <option value="Brush Script&#9;MT">Brush Script MT</option>
                                        <option value="Century Gothic">Century Gothic</option>
                                        <option value="Comic Sans MS">Comic Sans MS</option>
                                        <option value="Courier">Courier</option>
                                        <option value="Courier New">Courier New</option>
                                        <option value="MS Sans Serif">MS Sans Serif</option>
                                        <option value="Script">Script</option>
                                        <option value="System">System</option>
                                        <option value="Times New Roman">Times New Roman</option>
                                        <option value="Viner Hand ITC">Viner Hand ITC</option>
                                        <option value="Verdana">Verdana</option>
                                        <option value="Wide&#9;Latin">Wide Latin</option>
                                        <option value="Wingdings">Wingdings</option>

                                    </select>

                                </div>
                            </div>
                        </div>
                        <div class="con-container-section">
                            <div>
                                <div class="con-section-header">
                                    标题 
                                   <span>(12px)</span>
                                </div>
                                <div class="clearfix">
                                    <div style="float: right; margin-right: 40px; width: 200px;">
                                        <input type="text" id="me_title-font" class="slider con-fontsize" value="4" style="width: 150px">
                                    </div>
                                    <select class="con-font" dataid="me_title">
                                        <option selected="selected" value="宋体">宋体</option>
                                        <option value="黑体">黑体</option>
                                        <option value="楷体_GB2312">楷体</option>
                                        <option value="仿宋_GB2312">仿宋</option>
                                        <option value="隶书">隶书</option>
                                        <option value="幼圆">幼圆</option>
                                        <option value="Arial">Arial</option>
                                        <option value="Arial Black">Arial Black</option>
                                        <option value="Arial Narrow">Arial Narrow</option>
                                        <option value="Bradley Hand&#9;ITC">Bradley Hand ITC</option>
                                        <option value="Brush Script&#9;MT">Brush Script MT</option>
                                        <option value="Century Gothic">Century Gothic</option>
                                        <option value="Comic Sans MS">Comic Sans MS</option>
                                        <option value="Courier">Courier</option>
                                        <option value="Courier New">Courier New</option>
                                        <option value="MS Sans Serif">MS Sans Serif</option>
                                        <option value="Script">Script</option>
                                        <option value="System">System</option>
                                        <option value="Times New Roman">Times New Roman</option>
                                        <option value="Viner Hand ITC">Viner Hand ITC</option>
                                        <option value="Verdana">Verdana</option>
                                        <option value="Wide&#9;Latin">Wide Latin</option>
                                        <option value="Wingdings">Wingdings</option>
                                    </select>


                                </div>
                            </div>
                        </div>
                        <div class="con-container-section">
                            <div>
                                <div class="con-section-header">
                                    简介 
                                   <span>(12px)</span>
                                </div>
                                <div class="clearfix">
                                    <div style="float: right; margin-right: 40px; width: 200px;">
                                        <input type="text" id="me_intrc-font" class="slider con-fontsize" value="4" style="width: 150px">
                                    </div>
                                    <select class="con-font" dataid="me_intrc">
                                        <option selected="selected" value="宋体">宋体</option>
                                        <option value="黑体">黑体</option>
                                        <option value="楷体_GB2312">楷体</option>
                                        <option value="仿宋_GB2312">仿宋</option>
                                        <option value="隶书">隶书</option>
                                        <option value="幼圆">幼圆</option>
                                        <option value="Arial">Arial</option>
                                        <option value="Arial Black">Arial Black</option>
                                        <option value="Arial Narrow">Arial Narrow</option>
                                        <option value="Bradley Hand&#9;ITC">Bradley Hand ITC</option>
                                        <option value="Brush Script&#9;MT">Brush Script MT</option>
                                        <option value="Century Gothic">Century Gothic</option>
                                        <option value="Comic Sans MS">Comic Sans MS</option>
                                        <option value="Courier">Courier</option>
                                        <option value="Courier New">Courier New</option>
                                        <option value="MS Sans Serif">MS Sans Serif</option>
                                        <option value="Script">Script</option>
                                        <option value="System">System</option>
                                        <option value="Times New Roman">Times New Roman</option>
                                        <option value="Viner Hand ITC">Viner Hand ITC</option>
                                        <option value="Verdana">Verdana</option>
                                        <option value="Wide&#9;Latin">Wide Latin</option>
                                        <option value="Wingdings">Wingdings</option>
                                    </select>


                                </div>
                            </div>
                        </div>
                        <div class="con-container-section">
                            <div>
                                <div class="con-section-header">
                                    标签 
                                   <span>(12px)</span>
                                </div>
                                <div class="clearfix">
                                    <div style="float: right; margin-right: 40px; width: 200px;">
                                        <input type="text" id="me_tag-font" class="slider con-fontsize" value="4" style="width: 150px">
                                    </div>
                                    <select class="con-font" dataid="me_tag">
                                        <option selected="selected" value="宋体">宋体</option>
                                        <option value="黑体">黑体</option>
                                        <option value="楷体_GB2312">楷体</option>
                                        <option value="仿宋_GB2312">仿宋</option>
                                        <option value="隶书">隶书</option>
                                        <option value="幼圆">幼圆</option>
                                        <option value="Arial">Arial</option>
                                        <option value="Arial Black">Arial Black</option>
                                        <option value="Arial Narrow">Arial Narrow</option>
                                        <option value="Bradley Hand&#9;ITC">Bradley Hand ITC</option>
                                        <option value="Brush Script&#9;MT">Brush Script MT</option>
                                        <option value="Century Gothic">Century Gothic</option>
                                        <option value="Comic Sans MS">Comic Sans MS</option>
                                        <option value="Courier">Courier</option>
                                        <option value="Courier New">Courier New</option>
                                        <option value="MS Sans Serif">MS Sans Serif</option>
                                        <option value="Script">Script</option>
                                        <option value="System">System</option>
                                        <option value="Times New Roman">Times New Roman</option>
                                        <option value="Viner Hand ITC">Viner Hand ITC</option>
                                        <option value="Verdana">Verdana</option>
                                        <option value="Wide&#9;Latin">Wide Latin</option>
                                        <option value="Wingdings">Wingdings</option>
                                    </select>


                                </div>
                            </div>

                        </div>
                    </div>   </div>
                </div>
            </div>
            <div class="con-slider" style="display: none" dataid="socialinfo">
                <div class="conp-navigation con-slider-block">
                    <div class="con-container-section" id="Div6">
                        <div class="conp-nav paid" id="Div7" data="con-icon-information">
                            <div class="conp-nav-icon con-sprites con-icon-information"></div>
                            <div class="conp-nav-title">背景设置</div>
                            <div class="conp-nav-description">编写个人简介或描述</div>
                        </div>
                
                    <div class="con-container-section">
                        <div id="con-content-add-services-list" class="con-list-add con-scroll-pane" style="overflow: hidden; width: 490px; padding: 0px; top: 0px;">
                            <div id="sina_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-eighttracks"></div>
                            <div id="qq_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-bandcamp"></div>
                            <div id="sohu_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-behance"></div>
                            <div id="163_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-blogger"></div>
                            <div id="rr_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-dailybooth"></div>
                            <div id="kx_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-delicious"></div>
                            <div id="tjh_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-digg"></div>
                            <div id="db_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-etsy2"></div>
                            <div id="py_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-facebookpage"></div>
                            <div id="dd_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-flickr"></div>
                            <%--<div id="jp_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-formspring"></div>--%>
                            <div id="yk_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-foursquare"></div>
                            <div id="td_btn" class="con-list-add-logo con-sprites con-sprites-logo-services-github"></div>
                        </div>
                        <div>
                            <form method="get">
                                <input type="submit" class="con-content-add-services-import-button con-button" style="float: none; margin: 0 auto" value="连接豆瓣网">
                            </form>
                        </div>

                        <table>

                            <thead>
                                <tr>
                                    <th>链接地址</th>
                                    <th>链接名称(必填)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <input name="links[0][url]" style="width: 280px;" type="text" placeholder="http://" value="" autocomplete="off"></td>
                                    <td>
                                        <input name="links[0][name]" style="width: 150px;" type="text" maxlength="20" value="" autocomplete="off"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input name="links[1][url]" style="width: 280px;" type="text" placeholder="http://" value="" autocomplete="off"></td>
                                    <td>
                                        <input name="links[1][name]" style="width: 150px;" type="text" maxlength="20" value="" autocomplete="off"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input name="links[2][url]" style="width: 280px;" type="text" placeholder="http://" value="" autocomplete="off"></td>
                                    <td>
                                        <input name="links[2][name]" style="width: 150px;" type="text" maxlength="20" value="" autocomplete="off"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input name="links[3][url]" style="width: 280px;" type="text" placeholder="http://" value="" autocomplete="off"></td>
                                    <td>
                                        <input name="links[3][name]" style="width: 150px;" type="text" maxlength="20" value="" autocomplete="off"></td>
                                </tr>
                            </tbody>

                        </table>    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="conp-header-bottom">
        <img src="../images/controller_saving.gif" />正在保存至服务器...
    </div>
</div>


