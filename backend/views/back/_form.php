<?php

use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use kartik\datecontrol\DateControl;
use kartik\select2\Select2;
use backend\models\Dics;
use kartik\file\FileInput;
use yii\helpers\Url;

/**
 * @var yii\web\View $this
 * @var backend\models\Admin $model
 * @var yii\widgets\ActiveForm $form
 */
?>

<div class="admin-form" style="width: 80%">

    <?php $form = ActiveForm::begin([
        'type' => ActiveForm::TYPE_VERTICAL,
        'formConfig' => [
            'deviceSize' => ActiveForm::SIZE_LARGE,
        ],
    ]);
    ?>
    <div class="col-lg-12">
        <?php
        echo Form::widget([

            'model' => $model,
            'form' => $form,
            'columns' => 1,
            'attributes' => [

                'username' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => '请输入用户名']],

                'type' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => Select2::className(), 'options' => [
                    'data' => Dics::GetAdminType(),
                    'options' => ['placeholder' => '请选择管理员类型'],
                    'pluginOptions' => ['allowClear' => true]
                ]],

                'password' => ['type' => Form::INPUT_PASSWORD, 'options' => ['placeholder' => '请输入密码']],

                'confirm_password' => ['type' => $model->isNewRecord ? Form::INPUT_PASSWORD : Form::INPUT_HIDDEN, 'options' => ['placeholder' => '请再次输入密码'], 'label' => $model->isNewRecord ? '确认密码' : false],

                'email' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => '请输入邮箱']],

                'img' => [
                    'label' => '头像(宽高比1:1)',
                    'type' => Form::INPUT_WIDGET, 'widgetClass' => FileInput::className(),
                    'options' => [
                        'options' => [
                            'accept' => 'image/*',
                            'showUpload' => false,
                            'showRemove' => false,
                        ],
                        'pluginOptions' => [
                            'initialPreview' => empty($model->logo) ? false : [
                                "../../../../photo" . $model->logo,
                            ],
                            'uploadUrl' => Url::to(['/back/upload']),
                            'uploadExtraData' => [
                                'attr' => 'img',
                            ],
                            'maxFileSize' => 1000,
                            'previewFileType' => 'image',
                            'initialPreviewAsData' => true,
                            'showUpload' => true,
                            'showRemove' => true,
                            'autoReplace' => true,
                            'browseClass' => 'btn btn-success',
                            'uploadClass' => 'btn btn-info',
                            'removeClass' => 'btn btn-danger',
                            'maxFileCount' => 1,
                            'fileActionSettings' => [
                                'showZoom' => false,
                                'showUpload' => false,
                                'showRemove' => false,
                            ],
                        ],
                        'pluginEvents' => [
                            'fileuploaderror' => "function(object,data){
                                                 $('.fileinput-upload-button').attr('disabled',true);
                                                }",
                            'fileerror' => "function(object,data){
                                                 $('.fileinput-upload-button').attr('disabled',true);
                                                }",
                            'fileclear' => "function(){
                                                $('.fileinput-upload-button').attr('disabled',false);
                                    $('#admin-logo').val('');
                                    }",
                            'fileuploaded' => "function (object,data){
			                    $('#admin-logo').val(data.response.imageUrl);
		                    }",
                            //错误的冗余机制
                            'error' => "function (){
			                    alert('data.error');
		                    }"
                        ]
                    ],
                ],

                'logo' => ['type'=>Form::INPUT_HIDDEN,'label'=>false]
            ]
        ]);
        ?>
    </div>
    <?php
    echo '<p style="text-align: center">' .
        Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-primary']) . '</p>';
    ?>

    <?php
    ActiveForm::end(); ?>

</div>
