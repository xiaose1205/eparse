﻿define(function (require, exports, module) {
    var $ = require('lib/jquery.js');
    require("lib/messenger.js");
 
    $._messengerDefaults = {
        extraClasses: 'messenger-fixed messenger-theme-air messenger-on-top  messenger-on-right'
    };
    var msg = $.globalMessenger().post({
        id: "Only-one-message", singleton: true,
        message: "",
        type: 'success',location:""
    });
    msg.hide();
    /*弹出层*/
    exports.alertMsg = function (message, result, func) {

        msg.update({
            id: "Only-one-message", singleton: true,
            message: message,
            type: result == 1 ? 'success' : 'error',
            showCloseButton: true
        });
        msg.show();
    };

    /*loading*/
    exports.showLoading = function (message, result) {
        var i = 0;
        msg.update({
            id: "Only-one-message", singleton: true,
            message: message, type: 'success'
        }); msg.show();
    };

    /*多个一起判断*/
    exports.confirmMsg = function (message, okvalue, canelvalue, funcok, funccanel) {
        $.globalMessenger().post({
            message: message,
            actions: {
                retry: {
                    label: okvalue,
                    phrase: 'Retrying TIME',
                    auto: true,
                    delay: 10,
                    action: function () {
                        if (typeof (funcok) != "undefined")
                            funcok();
                    }
                },
                cancel: {
                    label: canelvalue,
                    action: function () {
                        if (typeof (funccanel) != "undefined")
                            funccanel();
                        return msg.cancel();
                    }
                }
            }
        });
    };
    exports.post = function (pControl, pAction, pParms, funcSuc, funcErr) {
        var ajaxurl = "ajax/" + pControl + "/" + pAction;
        /*parmas  demo: "{  'result':{ 'Result':-1,'Message':'不支持GET请求','PostTime':'2012-2-2'},'ido':233}"*/
        $.ajax({
            type: 'POST',
            url: ajaxurl,
            data: pParms,
            contentType: "application/json",
            beforeSend: function (XMLHttpRequest) {

                exports.showLoading("数据处理中....", 1);
            },
            success: function (data, textStatus) {

                funcSuc(data);
            },
            complete: function (XMLHttpRequest, textStatus) {

            },
            dataType: "json"
        });

        //var i = 0;
        //$.globalMessenger()["do"]({
        //    errorMessage: "This did not go well.",
        //    action: function (opts) {
        //        if (++i < 3) {
        //            return opts.error({
        //                status: 500,
        //                readyState: 0,
        //                responseText: 0
        //            });
        //        } else {
        //            return opts.success();
        //        }
        //    }
        //}, {
        //    type: 'POST',
        //    url: "/some-url",
        //    contentType: "application/json",
        //    success:  function (data, textStatus) {

        //        funcSuc(data);
        //    }
        //});
    };



});