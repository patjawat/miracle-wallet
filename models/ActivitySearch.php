<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Activity;

/**
 * ActivitySearch represents the model behind the search form of `app\models\Activity`.
 */
class ActivitySearch extends Activity
{

    public $date1;
    public $date2;
    public function rules()
    {
        return [
            [['id', 'type', 'uid', 'deposit_via', 'withdrawal_via', 'status', 'created', 'updated'], 'integer'],
            [['txid', 'user_customer', 'mt4', 'idcard', 'name', 'email', 'bank_account_number', 'bank_account_name', 'bankname_customer', 'vat_percent', 'vat_local', 'currency', 'status_broker', 'notify'], 'safe'],
            [['amount_usd', 'local_amount', 'exchange_rate'], 'number'],
            [['date1','date2'], 'safe'],

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
        $query = Activity::find();

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
            'type' => $this->type,
            'uid' => $this->uid,
            'amount_usd' => $this->amount_usd,
            'local_amount' => $this->local_amount,
            'exchange_rate' => $this->exchange_rate,
            'deposit_via' => $this->deposit_via,
            'withdrawal_via' => $this->withdrawal_via,
            'status' => $this->status,
            'created' => $this->created,
            'updated' => $this->updated,
        ]);

        $query->andFilterWhere(['like', 'txid', $this->txid])
            ->andFilterWhere(['like', 'user_customer', $this->user_customer])
            ->andFilterWhere(['like', 'mt4', $this->mt4])
            ->andFilterWhere(['like', 'idcard', $this->idcard])
            ->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'bank_account_number', $this->bank_account_number])
            ->andFilterWhere(['like', 'bank_account_name', $this->bank_account_name])
            ->andFilterWhere(['like', 'bankname_customer', $this->bankname_customer])
            ->andFilterWhere(['like', 'vat_percent', $this->vat_percent])
            ->andFilterWhere(['like', 'vat_local', $this->vat_local])
            ->andFilterWhere(['like', 'currency', $this->currency])
            ->andFilterWhere(['like', 'status_broker', $this->status_broker])
            ->andFilterWhere(['like', 'notify', $this->notify]);

        return $dataProvider;
    }
}
