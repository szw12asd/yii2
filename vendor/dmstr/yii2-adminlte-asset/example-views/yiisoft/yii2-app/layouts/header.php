<?php
use yii\helpers\Html;

/* @var $this \yii\web\View */
/* @var $content string */
?>

<header class="main-header">

    <?= Html::a('<span class="logo-mini">YII</span><span class="logo-lg">' . Yii::$app->name . '</span>', Yii::$app->homeUrl, ['class' => 'logo']) ?>

    <nav class="navbar navbar-static-top" role="navigation">

        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only"></span>
        </a>

        <div class="navbar-custom-menu">

            <ul class="nav navbar-nav">
                <!-- User Account: style can be found in dropdown.less -->

                <li class="dropdown user user-menu"">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="margin-right: auto">
                        <img src="<?= Yii::$app->params['img_path'].(empty($user->logo) ? '/logo/profile_small.jpg':$user->logo)?>" class="user-image" alt="头像"/>
                        <span class="hidden-xs"><?=$user->username ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <img src="<?= Yii::$app->params['img_path'].(empty($user->logo) ? '/logo/profile_small.jpg':$user->logo)?>" class="img-circle"
                                 alt="头像"/>

                            <p>
                                <?=$user->username.' - '.$userRole ?>
                                <small>注册时间：<?=date('Y/m/d',$user->created_at) ?></small>
                            </p>
                        </li>
                        <!-- Menu Body -->
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <?= Html::a(
                                    '个人资料',
                                    ['/admin/user/view','id'=>$user->id],
                                    ['class' => 'btn btn-default btn-flat']
                                ) ?>
                            </div>
                            <div class="pull-right">
                                <?= Html::a(
                                    '登 出',
                                    ['/site/logout'],
                                    ['data-method' => 'get', 'class' => 'btn btn-default btn-flat']
                                ) ?>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>
