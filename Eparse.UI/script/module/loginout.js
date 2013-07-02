define(function (require, exports, module) {
    var $ = require('lib/jquery.js');
    var form = require("common.actions.js");
    $("#loginbtn").click(function () {
        debugger;
        var username = $("#inputEmail").val();
        var pwd = $("#inputPassword").val();
        if ($.trim(username) == "" || $.trim(pwd) == "") {
            form.alertMsg("用户名密码不能为空", 0);
            return false;
        }
        form.post("user", "login", "{usr:'" + username + "',pwd:'" + pwd + "'}",
            function (data) {

                form.alertMsg(data.Message, data.Result);
                if (data.Result == 1) {
                    window.location.href = "/me/me.aspx";
                }
            }, function () {
                form.alertMsg("用户名密码错误", 0);
            });
    });

    exports.regit = function () {
        var username = $("#inputEmail").val();
        var pwd = $("#inputPassword").val();

        form.post("user", "login", "'usr':'" + username + "','pwd':'" + pwd + "'",
            function () {
                form.alertMsg("注册成功", 0);
                window.location.href = "/me/me.aspx";
            }, function () {
                form.alertMsg("用户名密码错误", 0);
            });
    };
});