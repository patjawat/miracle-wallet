<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pw_users_wallets".
 *
 * @property int $id
 * @property int|null $uid
 * @property string|null $img
 * @property float|null $amount
 * @property string|null $currency
 * @property int|null $updated
 */
class UsersWallets extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pw_users_wallets';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['uid', 'updated'], 'integer'],
            [['img'], 'string'],
            [['amount'], 'number'],
            [['currency'], 'string', 'max' => 5],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'uid' => 'Uid',
            'img' => 'Img',
            'amount' => 'Amount',
            'currency' => 'Currency',
            'updated' => 'Updated',
        ];
    }
}
