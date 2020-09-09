<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PwUsersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Pw Users');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pw-users-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Create Pw Users'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'password',
            'password_recovery',
            'document_verified',
            'email_verified:email',
            //'email_hash:email',
            //'email:email',
            //'status',
            //'account_type',
            //'account_level',
            //'account_user',
            //'ip',
            //'last_login',
            //'signup_time:datetime',
            //'2fa_auth',
            //'2fa_auth_login',
            //'2fa_auth_send',
            //'2fa_auth_withdrawal',
            //'googlecode',
            //'wallet_passphrase',
            //'first_name',
            //'last_name',
            //'business_name',
            //'merchant_api_key',
            //'country',
            //'city',
            //'province',
            //'zip_code',
            //'address',
            //'birthday_date',
            //'deposit_via',
            //'withdraw_via',
            //'sattlement_via',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
