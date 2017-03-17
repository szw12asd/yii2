<?php
/**
 * Created by PhpStorm.
 * User: SZW
 * Date: 2017/3/17
 * Time: 11:16
 */

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class ViewAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/bootstrap/bootstrap.css.map',
        'css/bootstrap/bootstrap.min.css.map',
        'css/bootstrap/bootstrap-grid.css.map',
        'css/bootstrap/bootstrap-grid.min.css.map',
        'css/bootstrap/bootstrap-reboot.css.map',
        'css/bootstrap/bootstrap-reboot.min.css.map',
    ];
    public $js = [
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}