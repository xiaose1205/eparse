$().ready(function () {

    $('.ui-draggable').drag(function (ev, dd) {  //拖动自定义面板 

      
        var maxPos = {
            top: 30,
            left: $('body').innerWidth() - $(this).outerWidth()
        };

        $(this).css({
            top: Math.max(maxPos.top, Math.min(dd.offsetY, 1050)),
            left: Math.max(0, Math.min(maxPos.left, dd.offsetX))
        });
    }, { handle: '#con-drag' });


    $('#mydefault_info')
    .drag(function (ev, dd) {  //拖动自定义面板

        var maxPos = {
            top: 30,
            left: $('body').innerWidth() - $(this).outerWidth()
        };
        $(this).css({
            top: Math.max(0, Math.min(dd.offsetY, 1050)),
            left: Math.max(0, Math.min(maxPos.left, dd.offsetX))
        });
    }, { handle: '#mydefault_drag' });

    $(".conp-nav").hover(function () {
        $(this).find("div:first-child").toggleClass($(this).attr("data") + "-hover");
    });
    $(".conp-header").click(function () {
        if ($(this).next().css("display") == "block")
            $(this).next().slideUp("slow");
        else {
            $(this).next().slideDown("slow");
        }
    });
    $("#con-drag-minimize").click(function () {
        $(".ui-draggable").css("display", "none");
    });
    $("#docontrolpanel").click(function () {

        if ($(".ui-draggable").css("display") == "block")
            $(".ui-draggable").hide();
        else {
            $(".ui-draggable").show();
        }
    });

    $(".carousel_mask").click(function () {

        var doc = $("#carousel_info").find(".selected");

        if ($(this).attr("id") == "carousel_mask_right") {
            if (doc.next().attr("class") != undefined) {

                doc.next().addClass("selected");
                doc.removeClass("selected");
            }
        } else {
            if (doc.prev().attr("class") != undefined) {
                doc.prev().addClass("selected");
                doc.removeClass("selected");
            }
        }
    });
    $(".conp-nav-title").click(function () {

        var doc = $(this).parent().next().slideToggle(); 

    });
  
    
    /*$(".con-design-color").ColorPicker({
        onBeforeShow: function () {
            $(this).ColorPickerSetColor($(this).attr('media'));
        },
        onSubmit: function (hsb, hex, rgb, el) {
            $(el).css({
                'background-color': '#' + hex
            }).attr('media', hex).ColorPickerHide();
            var type = $(el).attr('type'); 
        }
    });*/
    $(".con-design-color").ColorPicker({
        color: '#0000ff',
        onShow: function (colpkr) {
            $(colpkr).fadeIn(500);
            return false;
        },
        onHide: function (colpkr) {
            $(colpkr).fadeOut(500);
            return false;
        },
        onChange: function (hsb, hex, rgb) {
            $('#colorSelector div').css('backgroundColor', '#' + hex);
        },
        onSubmit: function (hsb, hex, rgb, el) {
            $(el).css({
                'background-color': '#' + hex
            }).attr('media', hex).ColorPickerHide();


            if ($(el).attr("dataid") == "bg")
                getcurDom($(el).attr("rel")).css({
                    'background-color': 'rgba(' + rgb.r + ',' + rgb.g + ',' + rgb.b + ',' + 0.01 * (100 - curop) + ')'
                });
            else {
                getcurDom($(el).attr("rel")).css({
                    'color': '#' + hex
                });
            }
        }
    });
    var sliderParam = {
        circular: 0,
        scroll: 3,
        itemWidth: 166,
        itemHeight: 136
    };

    $('#store-bg-wrap').jCarouselLite($.extend({
        btnPrev: '#bg_store_prev',
        btnNext: '#bg_store_next'
    }, sliderParam));

    $('#thumbnail-fine-uploader').fineUploader({
        request: {
            endpoint: 'server/success.html'
        },
        multiple: false,
        validation: {
            allowedExtensions: ['jpeg', 'jpg', 'gif', 'png'],
            sizeLimit: 5120000 // 50 kB = 50 * 1024 bytes
        },
        text: {
            uploadButton: '<i class="icon-plus icon-white"></i>选择图片'
        }
    }).on('complete', function (event, id, fileName, responseJSON) {
        if (responseJSON.success) {
            $(this).append('<img src="img/success.jpg" alt="' + fileName + '">');
        }
    });

    $('#thumbnail-info-uploader').fineUploader({
        request: {
            endpoint: '../handler/uploader.ashx'
        },
        multiple: false,
        validation: {
            allowedExtensions: ['jpeg', 'jpg', 'gif', 'png'],
            sizeLimit: 51200 // 50 kB = 50 * 1024 bytes
        },
        text: {
            uploadButton: '<i class="icon-plus icon-white"></i>选择图片'
        }
    }).on('complete', function (event, id, fileName, responseJSON) {
        if (responseJSON.success) {
            $(this).append('<img src="img/success.jpg" alt="' + fileName + '">');
        }
    });
    var curop = 0.4;
    $('#me_info_opt').slider({
        from: 0,
        to: 100,
        step: 1,
        callback: function (value) {
            //getcurDom("me_info").css(); getcurDom($(el).attr("rel")).css({
            //    'background-color': 'rgba(' + rgb.r + ',' + rgb.g + ',' + rgb.b + ',' + curop + ')'
            //});
            var rgb = ("#" + $("#background_1").attr("media")).colorRgb();
            getcurDom(".me_info").css({
                'background-color': 'rgba(' + rgb.r + ',' + rgb.g + ',' + rgb.b + ',' + 0.01 * (100 - value) + ')'
            });
        }
    });




    $(".conp_ac").find("a").click(function () {
        $(".conp_ac").removeClass("active");
        $(".con-slider").hide();
        $(this).parent().addClass("active");
        $(".con-slider[dataid='" + $(this).attr("id") + "']").show();
    });
    var currentId = "mydefault";
    $("input[name='myicon']").click(function () {
        if ($(this).val() == "0") {
            getcurDom(".me_avatar").show();
            getcurDom(".me_avatar").css("float", "left");
        }
        else if ($(this).val() == "1") {
            getcurDom(".me_avatar").show();
            getcurDom(".me_avatar").css("float", "right");
        } else if ($(this).val() == "2") {
            getcurDom(".me_avatar").hide();
        }
    });

    $("#global-nav-toggle").click(function () {
        if ($("#global-nav-toggle-icon").hasClass("global-sprites-nav-toggle-left")) {
            $("#global-nav-toggle-icon").removeClass("global-sprites-nav-toggle-left");
            $("#global-nav-toggle-icon").addClass("global-sprites-nav-toggle-right");
            $("#navigation-top").find(".shadow").hide();
            $("#navigation-top").css("width", "20px");
        }
        else if ($("#global-nav-toggle-icon").hasClass("global-sprites-nav-toggle-right")) {
            $("#global-nav-toggle-icon").removeClass("global-sprites-nav-toggle-right");
            $("#global-nav-toggle-icon").addClass("global-sprites-nav-toggle-left");
            $("#navigation-top").find(".shadow").show();
            $("#navigation-top").css("width", "600px");
        }
    });
    var getcurDom = function (dom) {
        return $("." + currentId).find(dom);
    };
    $(".epase_action").hover(function () {
        $(".action_close").show();
    }, function () {
        $(".action_close").hide();
    });

    $(".thumb-wrap").click(function () {
        getcurDom(".carousel_bg").
            css("background-image", "url(" + $(this).attr("href") + ")");
        return false;
    });

    /*所有变化的操作进入数组，然后ajax定时传递后台，统一处理*/
    var arr = [];

    $(".con-toggle-input").click(function () {
        if ($(this).val() == "0") {
            getcurDom(".carousel_bg").
           css("background-repeat", "no-repeat no-repeat");

        } else if ($(this).val() == "1") {
            getcurDom(".carousel_bg").
           css("background-repeat", "repeat repeat");
            getcurDom(".carousel_bg").
         css("background-position", "50% 0%");
        } else if ($(this).val() == "2") {
            getcurDom(".carousel_bg").
           css("background-repeat", "no-repeat no-repeat");

        }
    });


    $(".con-info-input").click(function () {

        if ($(this).attr("rel") == "0") {
            getcurDom(".me_info").css({ "top": "0", "left": "0", "right": "auto", "bottom": "auto", "width": "300px", "height": "100%" });
        } if ($(this).attr("rel") == "2") {
            getcurDom(".me_info").css({ "top": "0", "right": "0", "left": "auto", "bottom": "auto", "width": "300px", "height": "100%" });
        }
        if ($(this).attr("rel") == "1") {
            getcurDom(".me_info").css({ "top": "0", "left": "0", "right": "auto", "bottom": "auto", "width": "100%", "height": "300px" });
        }
        if ($(this).attr("rel") == "3") {
            getcurDom(".me_info").css({ "bottom": "0", "left": "0", "right": "auto", "top": "auto", "width": "100%", "height": "300px" });
        }
        if ($(this).attr("rel") == "4") {
            getcurDom(".me_info").css({ "top": "30px", "left": "100px", "right": "auto", "bottom": "auto", "width": "400px", "height": "550px" });
        }
    });
    $(".info_deta").change(function () {
        var value = $(this).val();
        if (value.indexOf("%") != -1) {
            getcurDom(".me_info").css($(this).attr("dataid"), $(this).val());

        } else {
            getcurDom(".me_info").css($(this).attr("dataid"), $(this).val() + "px");

        }

    });

    $(".con-toggle-icon").click(function () {
        if ($(this).hasClass("con-backgrounds-top-left")) {
            getcurDom(".carousel_bg").
            css("background-position", "0% 0px");
        }
        else if ($(this).hasClass("con-backgrounds-top-center")) {
            getcurDom(".carousel_bg").
            css("background-position", "50% 0px");
        }
        else if ($(this).hasClass("con-backgrounds-top-right")) {
            getcurDom(".carousel_bg").
            css("background-position", "100% 0px");
        }
        else if ($(this).hasClass("con-backgrounds-bottom-left")) {
            getcurDom(".carousel_bg").
            css("background-position", "0% 100%");
        }
        else if ($(this).hasClass("con-backgrounds-bottom-left")) {
            getcurDom(".carousel_bg").
            css("background-position", "50% 100%");
        }
        else if ($(this).hasClass("con-backgrounds-bottom-left")) {
            getcurDom(".carousel_bg").
            css("background-position", "100% 100%");
        }
    });
    $("#con-about-information-name").change(function () {
        getcurDom(".me_name").html($(this).val());
    });
    $("#con-about-information-title").change(function () {
        getcurDom(".me_title").html($(this).val());
    });
    $("#con-about-information-tag").change(function () {

    });

    $(".con-font").change(function () {

        getcurDom("." + $(this).attr("dataid")).css("font-family", $(this).val());
    });

    $('#me_tag-font').slider({
        from: 1,
        to: 200,
        step: 1,
        callback: function (value) {
            debugger;
            getcurDom(".me_tag").css("font-size", value + "px");
        }
    });
    $('#me_intrc-font').slider({
        from: 1,
        to: 200,
        step: 1,
        callback: function (value) {
            debugger;
            getcurDom(".me_intrc").css("font-size", value + "px");
        }
    });
    $('#me_title-font').slider({
        from: 1,
        to: 200,
        step: 1,
        callback: function (value) {
            debugger;
            getcurDom(".me_title").css("font-size", value + "px");
        }
    });
    $('#me_name-font').slider({
        from: 1,
        to: 200,
        step: 1,
        callback: function (value) {
            debugger;
            getcurDom(".me_name").css("font-size", value + "px");
        }
    });
});


var reg = /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;
/*RGB棰滆壊杞崲涓�16杩涘埗*/
String.prototype.colorHex = function () {
    var that = this;
    if (/^(rgb|RGB)/.test(that)) {
        var aColor = that.replace(/(?:\(|\)|rgb|RGB)*/g, "").split(",");
        var strHex = "#";
        for (var i = 0; i < aColor.length; i++) {
            var hex = Number(aColor[i]).toString(16);
            if (hex === "0") {
                hex += hex;
            }
            strHex += hex;
        }
        if (strHex.length !== 7) {
            strHex = that;
        }
        return strHex;
    } else if (reg.test(that)) {
        var aNum = that.replace(/#/, "").split("");
        if (aNum.length === 6) {
            return that;
        } else if (aNum.length === 3) {
            var numHex = "#";
            for (var i = 0; i < aNum.length; i += 1) {
                numHex += (aNum[i] + aNum[i]);
            }
            return numHex;
        }
    } else {
        return that;
    }
};

//-------------------------------------------------

/*16杩涘埗棰滆壊杞负RGB鏍煎紡*/
String.prototype.colorRgb = function () {
    var sColor = this.toLowerCase();
    if (sColor && reg.test(sColor)) {
        if (sColor.length === 4) {
            var sColorNew = "#";
            for (var i = 1; i < 4; i += 1) {
                sColorNew += sColor.slice(i, i + 1).concat(sColor.slice(i, i + 1));
            }
            sColor = sColorNew;
        }
        //澶勭悊鍏綅鐨勯鑹插€�
        var sColorChange = [];
        for (var i = 1; i < 7; i += 2) {
            sColorChange.push(parseInt("0x" + sColor.slice(i, i + 2)));
        }
        var rgb = [{
            r: 0,
            g: 0,
            b: 0
        }];
        rgb.r = sColorChange[0];
        rgb.g = sColorChange[1];
        rgb.b = sColorChange[2];
        return rgb;
    } else {
        return sColor;
    }
};