<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PwUsersSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pw-users-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'password') ?>

    <?= $form->field($model, 'password_recovery') ?>

    <?= $form->field($model, 'document_verified') ?>

    <?= $form->field($model, 'email_verified') ?>

    <?php // echo $form->field($model, 'email_hash') ?>

    <?php // echo $form->field($model, 'email') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'account_type') ?>

    <?php // echo $form->field($model, 'account_level') ?>

    <?php // echo $form->field($model, 'account_user') ?>

    <?php // echo $form->field($model, 'ip') ?>

    <?php // echo $form->field($model, 'last_login') ?>

    <?php // echo $form->field($model, 'signup_time') ?>

    <?php // echo $form->field($model, '2fa_auth') ?>

    <?php // echo $form->field($model, '2fa_auth_login') ?>

    <?php // echo $form->field($model, '2fa_auth_send') ?>

    <?php // echo $form->field($model, '2fa_auth_withdrawal') ?>

    <?php // echo $form->field($model, 'googlecode') ?>

    <?php // echo $form->field($model, 'wallet_passphrase') ?>

    <?php // echo $form->field($model, 'first_name') ?>

    <?php // echo $form->field($model, 'last_name') ?>

    <?php // echo $form->field($model, 'business_name') ?>

    <?php // echo $form->field($model, 'merchant_api_key') ?>

    <?php // echo $form->field($model, 'country') ?>

    <?php // echo $form->field($model, 'city') ?>

    <?php // echo $form->field($model, 'province') ?>

    <?php // echo $form->field($model, 'zip_code') ?>

    <?php // echo $form->field($model, 'address') ?>

    <?php // echo $form->field($model, 'birthday_date') ?>

    <?php // echo $form->field($model, 'deposit_via') ?>

    <?php // echo $form->field($model, 'withdraw_via') ?>

    <?php // echo $form->field($model, 'sattlement_via') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
