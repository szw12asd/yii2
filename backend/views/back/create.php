<?php

use yii\helpers\Html;
use yii\widgets\Breadcrumbs;

/**
 * @var yii\web\View $this
 * @var backend\models\Admin $model
 */

$this->title = ' 新增管理员';
$this->params['breadcrumbs'][] = ['label' => '管理员列表', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="admin-create">
    <div class="panel panel-info">
        <div class="panel-heading">
            <span class="glyphicon glyphicon-plus"></span><?= $this->title ?>
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
            <?= $this->render('_form', [
                'model' => $model,
            ]) ?>
        </div>
    </div>
</div>
