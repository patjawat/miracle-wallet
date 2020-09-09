<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\PwUsers */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Pw Users'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="pw-users-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'password',
            'password_recovery',
            'document_verified',
            'email_verified:email',
            'email_hash:email',
            'email:email',
            'status',
            'account_type',
            'account_level',
            'account_user',
            'ip',
            'last_login',
            'signup_time:datetime',
            '2fa_auth',
            '2fa_auth_login',
            '2fa_auth_send',
            '2fa_auth_withdrawal',
            'googlecode',
            'wallet_passphrase',
            'first_name',
            'last_name',
            'business_name',
            'merchant_api_key',
            'country',
            'city',
            'province',
            'zip_code',
            'address',
            'birthday_date',
            'deposit_via',
            'withdraw_via',
            'sattlement_via',
        ],
    ]) ?>

</div>
