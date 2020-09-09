<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\RatesAdmin;

/**
 * RatesAdminSearch represents the model behind the search form of `app\models\RatesAdmin`.
 */
class RatesAdminSearch extends RatesAdmin
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'updated'], 'integer'],
            [['img', 'base', 'rates_type'], 'safe'],
            [['rates_buy', 'rates_sell'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = RatesAdmin::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'rates_buy' => $this->rates_buy,
            'rates_sell' => $this->rates_sell,
            'updated' => $this->updated,
        ]);

        $query->andFilterWhere(['like', 'img', $this->img])
            ->andFilterWhere(['like', 'base', $this->base])
            ->andFilterWhere(['like', 'rates_type', $this->rates_type]);

        return $dataProvider;
    }
}
