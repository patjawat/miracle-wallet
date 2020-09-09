<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pw_activity".
 *
 * @property int $id
 * @property string|null $txid
 * @property int|null $type
 * @property int|null $uid
 * @property string|null $user_customer
 * @property string|null $mt4
 * @property string|null $idcard
 * @property string|null $name
 * @property string|null $email
 * @property string|null $bank_account_number
 * @property string $bank_account_name
 * @property string $bankname_customer
 * @property float|null $amount_usd
 * @property float $local_amount
 * @property float $exchange_rate
 * @property string $vat_percent
 * @property string $vat_local
 * @property string|null $currency
 * @property int|null $deposit_via
 * @property int|null $withdrawal_via
 * @property int|null $status
 * @property string $status_broker
 * @property string|null $notify
 * @property int|null $created
 * @property int|null $updated
 */
class Activity extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pw_activity';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['txid', 'mt4', 'idcard', 'name', 'email', 'bank_account_number', 'bank_account_name', 'bankname_customer', 'notify'], 'string'],
            [['type', 'uid', 'deposit_via', 'withdrawal_via', 'status', 'created', 'updated'], 'integer'],
            [['bank_account_name', 'bankname_customer', 'local_amount', 'exchange_rate', 'vat_percent', 'vat_local'], 'required'],
            [['amount_usd', 'local_amount', 'exchange_rate'], 'number'],
            [['user_customer', 'currency'], 'string', 'max' => 255],
            [['vat_percent', 'vat_local'], 'string', 'max' => 20],
            [['status_broker'], 'string', 'max' => 10],
            [['process'], 'safe'],
            
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'txid' => 'Txid',
            'type' => 'Type',
            'uid' => 'Uid',
            'user_customer' => 'User Customer',
            'mt4' => 'Mt4',
            'idcard' => 'Idcard',
            'name' => 'Name',
            'email' => 'Email',
            'bank_account_number' => 'Bank Account Number',
            'bank_account_name' => 'Bank Account Name',
            'bankname_customer' => 'Bankname Customer',
            'amount_usd' => 'Amount Usd',
            'local_amount' => 'Local Amount',
            'exchange_rate' => 'Exchange Rate',
            'vat_percent' => 'Vat Percent',
            'vat_local' => 'Vat Local',
            'currency' => 'Currency',
            'deposit_via' => 'Deposit Via',
            'withdrawal_via' => 'Withdrawal Via',
            'status' => 'Status',
            'status_broker' => 'Status Broker',
            'notify' => 'Notify',
            'created' => 'Created',
            'updated' => 'Updated',
            'process' =>'ผู้ดำเนินการ'
        ];
    }

    public function Processuser() {
        $model = PwUsers::findOne($this->process);
        if($model){
            return $model->first_name;
        }else{
            return null;
        }
    }
}
