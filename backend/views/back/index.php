<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\jui\AutoComplete;
use backend\models\Admin;
use backend\models\Dics;
use yii\widgets\Breadcrumbs;

/**
 * @var yii\web\View $this
 * @var yii\data\ActiveDataProvider $dataProvider
 * @var \backend\models\AdminSearch $searchModel
 */

$this->title = '管理员列表';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="shop-info-index">
    <?php
    echo GridView::widget([
        "options" => [
            // ...其他设置项
            "id" => "admin_index",
        ],
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
        'pjax' => true,  //pjax is set to always true for this demo
        'pjaxSettings' => [
            'options' => [
                'id' => 'admin_pjax',
            ],
            'neverTimeout' => true,
        ],
        'columns' => [
            [
                'hAlign' => 'center',
                'vAlign' => 'middle',
                'header' => '编号',
                'class' => 'kartik\grid\SerialColumn',
                'contentOptions' => ['class' => 'kartik-sheet-style'],
                'width' => '5%',
            ],
            [
                'attribute' => 'username',
                'width' => '15%',
                'header' => '登录名',
                'hAlign' => 'center',
                'vAlign' => 'middle',
                'filterType' => AutoComplete::className(),
                'filterWidgetOptions' => [
                    'clientOptions' => [
                        'source' => Admin::getUserNames(),
                    ],
                ]
            ],
            [
                'header' => '类型',
                'width' => '15%',
                'attribute' => 'type',
                'hAlign' => 'center',
                'vAlign' => 'middle',
                'value' => function ($model) {
                    return Dics::GetAdminType($model->type)[$model->type];
                },
                'filterType' => GridView::FILTER_SELECT2,
                'filter' => Dics::GetAdminType(),
                'filterWidgetOptions' => [
                    'options' => ['placeholder' => '选择类型'],
                    'pluginOptions' => ['allowClear' => true],
                ],
            ],
            [
                'header' => '邮箱',
                'width' => '15%',
                'attribute' => 'email',
                'hAlign' => 'center',
                'vAlign' => 'middle',
                'filterType' => AutoComplete::className(),
                'filterWidgetOptions' => [
                    'clientOptions' => [
                        'source' => Admin::getUserEmails(),
                    ],
                ]
            ],
            [
                'label' => '发布时间',
                'hAlign' => 'center',
                'vAlign' => 'middle',
                'attribute' => 'created_at',
                'width' => '20%',
                'format' => ['date', 'php:Y年m月d日'],
                'value' => function ($model) {
                    return $model->created_at;
                },
                'filterType' => GridView::FILTER_DATE,
                'filterWidgetOptions' => [
                    // inline too, not bad
                    'language' => 'zh-CN',
                    'options' => ['placeholder' => '发布日期', 'readonly' => true],
                    'pluginOptions' => [
                        'format' => 'yyyy年mm月dd日',
                        'autoclose' => true,

                    ]
                ]
            ],
            [
                'label' => '状态',
                'hAlign' => 'center',
                'width' => '15%',
                'vAlign' => 'middle',
                'class' => 'kartik\grid\BooleanColumn',
                'trueIcon' => '<span class="label label-success"> 正&nbsp;常 </span>',
                'falseIcon' => '<span class="label label-danger"> 冻&nbsp;结 </span>',
                'attribute' => 'status',
                'trueLabel' => '正 常',
                'falseLabel' => '冻 结',
            ],
            [
                'header' => '操作',
                'class' => 'kartik\grid\ActionColumn',
                'width' => '15%',
                'hAlign' => 'center',
                'vAlign' => 'middle',
                'buttons' => [
                    'view' => function ($url, $model) {
                        return Html::a(Yii::t('app', 'View'), $url, [
                            'data-pjax' => 0,
                            'title' => '查看详细信息',
                            'class' => 'btn btn-info btn-xs',
                        ]);
                    },
                    'update' => function ($url, $model) {
                        return Html::a(Yii::t('app', 'Update'), $url, [
                            'data-pjax' => 0,
                            'title' => Yii::t('app', '编辑'),
                            'class' => 'btn btn-primary btn-xs',
                        ]);
                    },
                    'delete' => function ($url, $model) {
                        $admin = Yii::$app->user->identity;
                        if($admin->type<$model->type){
                            if ($model->status == 1) {
                                return Html::a(Yii::t('app', 'Lock'), $url, [
                                    'title' => '冻结该管理员',
                                    'class' => 'del btn btn-warning btn-xs',
                                    'data' => [
                                        'confirm' => '确定冻结该管理，一旦冻结，该用户将无法登录后台',
                                    ],
                                ]);
                            } elseif ($model->status == 0) {
                                return Html::a(Yii::t('app', 'Unlock'), $url, [
                                    'title' => Yii::t('app', 'unlock'),
                                    'class' => 'del btn btn-info btn-xs',
                                    'data' => ['confirm' => '确定解除冻结，一旦解除，用户将可以登录后台']

                                ]);
                            }
                        }else{
                            return '';
                        }
                    }

                ],
            ],
        ],
        'toolbar' => [
            ['content' =>
                Html::a('<i class="glyphicon glyphicon-plus"></i>', ['create'], ['data-pjax' => 0, 'type' => 'button', 'title' => '添加管理员', 'class' => 'btn btn-primary']) .
                Html::a('<i class="glyphicon glyphicon-repeat"></i>', ['index'], ['class' => 'btn btn-default', 'title' => '刷新列表'])
            ],
            '{toggleData}',
            '{export}',
        ],
        'responsive' => false,
        'condensed' => true,
        'panel' => [
            'type' => 'info',
            'heading' => '<h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> ' . Html::encode($this->title) . ' </h3>',
            'before' => Breadcrumbs::widget(
                [
                    'links' => (isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : []),
                    'options' => [
                        'class' => 'breadcrumb',
                        'style' => ['margin-bottom' => '0px', 'background-color' => '#fff'],
                    ]
                ]
            ),
            'after' => false,
            'footerOptions' => [
                'style' => 'background-color:#fff'
            ],
            'showPanel' => true,
            'showFooter' => true
        ],
        'export' => [
            'fontAwesome' => true
        ],
    ]); ?>

</div>
<?= $this->registerJs(
    "$(document).ready(init());
        $(document).on('pjax:complete', function () {
            init();
        });"
); ?>
<script language="JavaScript">
    function init() {
        $('.panel').find('.dropdown-toggle').unbind().attr('class', 'btn btn-default dropdown-toggle');
        $('.ui-autocomplete').css('z-index', '99999');
        $('.datepicker-days').css('z-index', '99999');
    }
</script>
