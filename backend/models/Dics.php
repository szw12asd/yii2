<?php

namespace backend\models;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "dics".
 *
 * @property string $type
 * @property integer $id
 * @property string $name
 */
class Dics extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'dics';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type', 'id'], 'required'],
            [['type', 'name'], 'string'],
            [['id'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'type' => 'Type',
            'id' => 'ID',
            'name' => 'Name',
        ];
    }

    public static function GetAdminType($id=null){
        $query = self::find()->where("type='后台管理员类型'");
        if(!empty($id)){
            $query->andWhere("id=$id");
        }
        $models = $query->all();
        return ArrayHelper::map($models,'id','name');
    }
}
