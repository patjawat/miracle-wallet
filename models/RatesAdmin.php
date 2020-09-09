<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pw_rates_admin".
 *
 * @property int $id
 * @property string|null $img
 * @property string $base
 * @property string $rates_type
 * @property float $rates_buy
 * @property float $rates_sell
 * @property int $updated
 */
class RatesAdmin extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pw_rates_admin';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['img'], 'string'],
            [['base', 'rates_type', 'rates_buy', 'rates_sell', 'updated'], 'required'],
            [['rates_buy', 'rates_sell'], 'number'],
            [['updated'], 'integer'],
            [['base', 'rates_type'], 'string', 'max' => 10],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'img' => 'Img',
            'base' => 'Base',
            'rates_type' => 'Rates Type',
            'rates_buy' => 'Rates Buy',
            'rates_sell' => 'Rates Sell',
            'updated' => 'Updated',
        ];
    }
}
