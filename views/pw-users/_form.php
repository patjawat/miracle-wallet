<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PwUsers */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pw-users-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'password')->passwordInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'password_recovery')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'document_verified')->textInput() ?>

    <?= $form->field($model, 'email_verified')->textInput() ?>

    <?= $form->field($model, 'email_hash')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status')->textInput() ?>

    <?= $form->field($model, 'account_type')->textInput() ?>

    <?= $form->field($model, 'account_level')->textInput() ?>

    <?= $form->field($model, 'account_user')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ip')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'last_login')->textInput() ?>

    <?= $form->field($model, 'signup_time')->textInput() ?>

    <?= $form->field($model, '2fa_auth')->textInput() ?>

    <?= $form->field($model, '2fa_auth_login')->textInput() ?>

    <?= $form->field($model, '2fa_auth_send')->textInput() ?>

    <?= $form->field($model, '2fa_auth_withdrawal')->textInput() ?>

    <?= $form->field($model, 'googlecode')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'wallet_passphrase')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'first_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'last_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'business_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'merchant_api_key')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'country')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'city')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'province')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'zip_code')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'address')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'birthday_date')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'deposit_via')->textInput() ?>

    <?= $form->field($model, 'withdraw_via')->textInput() ?>

    <?= $form->field($model, 'sattlement_via')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
