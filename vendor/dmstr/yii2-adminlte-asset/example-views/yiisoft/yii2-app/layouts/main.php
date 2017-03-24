<?php
use yii\helpers\Html;
use yii\helpers\Url;
use backend\models\Menu;

/* @var $this \yii\web\View */
/* @var $content string */

if (Yii::$app->controller->action->id === 'login') { 
/**
 * Do not use this code in your template. Remove it. 
 * Instead, use the code  $this->layout = '//main-login'; in your controller.
 */
    echo $this->render(
        'main-login',
        ['content' => $content]
    );
} else {
    $user = Yii::$app->user->identity;
    if(empty($user)){
        return Yii::$app->controller->goHome();
    }
//        return $this->redirect(['/index/welcome']);
    $userRole = key(Yii::$app->authManager->getRolesByUser($user->getId()));
    $menu = new Menu();
    $menu = $menu->getLeftMenuList();
    if (class_exists('backend\assets\AppAsset')) {
        backend\assets\AppAsset::register($this);
    } else {
        app\assets\AppAsset::register($this);
    }

    dmstr\web\AdminLteAsset::register($this);

    $directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/almasaeed2010/adminlte/dist');
    ?>
    <?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <link rel="shortcut icon" href="<?=Url::to("@web/favicon.ico")?>">
        <?php $this->head() ?>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
    <style>
        .sidebar-mini.sidebar-collapse .sidebar-menu > li:hover > .treeview-menu{
            top: 43px;
        }
    </style>
    <?php $this->beginBody() ?>
    <div class="wrapper" style="padding: 0px">
        <?= $this->render(
            'header.php',
            ['directoryAsset' => $directoryAsset,'user'=>$user,'userRole'=>$userRole]
        ) ?>

        <?= $this->render(
            'left.php',
            ['directoryAsset' => $directoryAsset,'menu'=>$menu,'user'=>$user,'userRole'=>$userRole]
        )
        ?>

        <?= $this->render(
            'content.php',
            ['content' => $content, 'directoryAsset' => $directoryAsset,'user'=>$user,'userRole'=>$userRole]
        ) ?>

    </div>

    <?php $this->endBody() ?>
    </body>
    </html>
    <?php $this->endPage() ?>
<?php } ?>
