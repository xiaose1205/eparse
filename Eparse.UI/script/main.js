//configure seajs
seajs.config({
    alias: {

        '$': 'lib/jquery.js',
        'bootstrap': 'lib/bootstrap',
        'bootstrap.css': '/css/bootstrap.css?t=2',
        'common.css': '/css/common.css?t=2',
        'index.css': '/css/index.css?t=2',
        'common':'lib/common.action'
    },
    preload: ['jquery', 'bootstrap']
    


});
define(function (require, exports, module) {

    require('init').run();

});
