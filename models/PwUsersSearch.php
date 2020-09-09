<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\PwUsers;

/**
 * PwUsersSearch represents the model behind the search form of `app\models\PwUsers`.
 */
class PwUsersSearch extends PwUsers
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'document_verified', 'email_verified', 'status', 'account_type', 'account_level', 'last_login', 'signup_time', '2fa_auth', '2fa_auth_login', '2fa_auth_send', '2fa_auth_withdrawal', 'deposit_via', 'withdraw_via', 'sattlement_via'], 'integer'],
            [['password', 'password_recovery', 'email_hash', 'email', 'account_user', 'ip', 'googlecode', 'wallet_passphrase', 'first_name', 'last_name', 'business_name', 'merchant_api_key', 'country', 'city', 'province', 'zip_code', 'address', 'birthday_date'], 'safe'],
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
        $query = PwUsers::find();

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
            'document_verified' => $this->document_verified,
            'email_verified' => $this->email_verified,
            'status' => $this->status,
            'account_type' => $this->account_type,
            'account_level' => $this->account_level,
            'last_login' => $this->last_login,
            'signup_time' => $this->signup_time,
            'deposit_via' => $this->deposit_via,
            'withdraw_via' => $this->withdraw_via,
            'sattlement_via' => $this->sattlement_via,
        ]);

        $query->andFilterWhere(['like', 'password', $this->password])
            ->andFilterWhere(['like', 'password_recovery', $this->password_recovery])
            ->andFilterWhere(['like', 'email_hash', $this->email_hash])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'account_user', $this->account_user])
            ->andFilterWhere(['like', 'ip', $this->ip])
            ->andFilterWhere(['like', 'googlecode', $this->googlecode])
            ->andFilterWhere(['like', 'wallet_passphrase', $this->wallet_passphrase])
            ->andFilterWhere(['like', 'first_name', $this->first_name])
            ->andFilterWhere(['like', 'last_name', $this->last_name])
            ->andFilterWhere(['like', 'business_name', $this->business_name])
            ->andFilterWhere(['like', 'merchant_api_key', $this->merchant_api_key])
            ->andFilterWhere(['like', 'country', $this->country])
            ->andFilterWhere(['like', 'city', $this->city])
            ->andFilterWhere(['like', 'province', $this->province])
            ->andFilterWhere(['like', 'zip_code', $this->zip_code])
            ->andFilterWhere(['like', 'address', $this->address])
            ->andFilterWhere(['like', 'birthday_date', $this->birthday_date]);

        return $dataProvider;
    }
}
