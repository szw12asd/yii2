<?php
namespace backend\controllers;
/**
 * Created by PhpStorm.
 * User: SZW
 * Date: 2017/3/21
 * Time: 14:22
 */

class ImageController extends \yii\base\Controller{

    public function actionIndex(){
        return $this->render('index');
    }

    public function actionUpload()
    {
        $fileName = 'file';
        $uploadPath = './files';

        if (isset($_FILES[$fileName])) {
            $file = \yii\web\UploadedFile::getInstanceByName($fileName);

            //Print file data
            //print_r($file);

            if ($file->saveAs($uploadPath . '/' . $file->name)) {
                //Now save file data to database

                echo \yii\helpers\Json::encode($file);
            }
        }

        return false;
    }
}