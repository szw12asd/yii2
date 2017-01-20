<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
        'css/logo.css',
        'css/font-awesome.min93e3.css',
        'css/login.min.css',
        'css/animate.min.css',
        'css/bootstrap.css',
        'css/bootstrap.min14ed.css',
        'css/bootstrap-theme.css',
        'css/style.min.css',
//        'css/style.min862f.css',
    ];
//    public $js = [
//        'js/bootstrap.js',
//        'js/bootstrap.min.js',
//        'js/jquery-3.1.1.min.js',
//        'js/npm.js',
//    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
