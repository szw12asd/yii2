<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Admin;

/**
 * AdminSearch represents the model behind the search form about `backend\models\Admin`.
 */
class AdminSearch extends Admin
{
    public function rules()
    {
        return [
            [['status', 'type'], 'integer'],
            [['username', 'email'], 'safe'],
            [['created_at'], 'safe'],
        ];
    }

    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    public function search($params)
    {
        $admin = Yii::$app->user->identity;
        $query = Admin::find();
        $query->where("type>=$admin->type");
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'status' => $this->status,
            'type' => $this->type,
        ]);

        $query->andFilterWhere(['like', 'username', $this->username])
            ->andFilterWhere(['like', 'email', $this->email]);

        return $dataProvider;
    }
}
