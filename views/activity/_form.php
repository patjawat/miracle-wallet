<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Activity */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="activity-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'txid')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'type')->textInput() ?>

    <?= $form->field($model, 'uid')->textInput() ?>

    <?= $form->field($model, 'user_customer')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'mt4')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'idcard')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'name')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'email')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'bank_account_number')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'bank_account_name')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'bankname_customer')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'amount_usd')->textInput() ?>

    <?= $form->field($model, 'local_amount')->textInput() ?>

    <?= $form->field($model, 'exchange_rate')->textInput() ?>

    <?= $form->field($model, 'vat_percent')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'vat_local')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'currency')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'deposit_via')->textInput() ?>

    <?= $form->field($model, 'withdrawal_via')->textInput() ?>

    <?= $form->field($model, 'status')->textInput() ?>

    <?= $form->field($model, 'status_broker')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'notify')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'created')->textInput() ?>

    <?= $form->field($model, 'updated')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
