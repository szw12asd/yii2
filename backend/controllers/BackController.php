<?php

namespace backend\controllers;

use Yii;
use backend\models\Admin;
use backend\models\AdminSearch;
use yii\helpers\ArrayHelper;
use yii\helpers\FileHelper;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * AdminController implements the CRUD actions for Admin model.
 */
class BackController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post','get'],
                ],
            ],
        ];
    }

    /**
     * Lists all Admin models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AdminSearch;
        $dataProvider = $searchModel->search(Yii::$app->request->getQueryParams());

        return $this->render('index', [
            'dataProvider' => $dataProvider,
            'searchModel' => $searchModel,
        ]);
    }

    public function actionUpload()
    {
        $goodType = new Admin();
        $file_name = 'admin_logo_' . time().'_'.rand(10000,99999);
        if (Yii::$app->request->isPost) {
            $image = UploadedFile::getInstance($goodType, 'img');
            if (!empty($image)) {
                $path = '../../photo/logo/';
                if (!is_dir($path) || !is_writable($path)) {
                    FileHelper::createDirectory($path, 0777, true);
                }
                $filePath = $path . '/' . $file_name . '.' . $image->extension;
                if ($image->saveAs($filePath)) {
                    echo json_encode([
                        'imageUrl' => '/logo/'  . $file_name . '.' . $image->extension,
                        'error' => '',
                    ]);
                    exit;
                } else {
                    echo json_encode([
                        'imageUrl' => '',
                        'error' => '保存图片失败，请重试',
                    ]);
                    exit;
                }
            } else {
                echo json_encode([
                    'imageUrl' => '',
                    'error' => '请重新选择图片后上传',
                ]);
                exit;
            }
        } else {
            echo json_encode([
                'imageUrl' => '',
                'error' => '请选择图片后上传',
            ]);
            exit;
        }
    }

    /**
     * Displays a single Admin model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('view', ['model' => $model]);
        }
    }

    /**
     * Creates a new Admin model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Admin;

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Admin model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Admin model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        if($model->status==1){
            $model->status=0;
            $message = '冻结管理员成功';
        }else{
            $model->status=1;
            $message = '激活管理员成功';
        }
        $model->updated_at = time();
        if($model->save()){
            Yii::$app->session->setFlash('success',$message);
        }else{
            Yii::$app->session->setFlash('danger',array_values($model->getFirstErrors())[0]);
        }
        return $this->redirect(['index']);
    }

    /**
     * Finds the Admin model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Admin the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Admin::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
