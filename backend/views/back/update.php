<?php

use yii\widgets\Breadcrumbs;

/**
 * @var yii\web\View $this
 * @var backend\models\Admin $model
 */

$this->title = ' 更新管理员信息:' . $model->username;
$this->params['breadcrumbs'][] = ['label' => '管理员列表', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->username, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = '更新';
?>
<div class="admin-update">

    <div class="panel panel-info">
        <div class="panel-heading">
            <span class="glyphicon glyphicon-edit"></span><?= $this->title ?>
            <div class="pull-right">
                <div class="summary"><?= Breadcrumbs::widget(
                        [
                            'links' => (isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : []),
                            'options' => [
                                'class' => 'breadcrumb',
                                'style' => ['background-color' => 'inherit', 'padding' => '0px'],
                            ]
                        ]
                    ) ?></div>
            </div>
        </div>
        <div class="panel-body">
            <!--    <div class="row">-->
            <?= $this->render('_form', [
                'model' => $model,
            ]) ?>
            <!--    </div>-->
        </div>
    </div>

</div>
