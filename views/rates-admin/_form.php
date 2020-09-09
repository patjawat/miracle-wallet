<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\RatesAdmin */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="rates-admin-form">

    <?php $form = ActiveForm::begin(['id' => 'form-rate']); ?>
    <?= $form->field($model, 'rates_buy')->textInput() ?>

    <?= $form->field($model, 'rates_sell')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'บันทึก'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<?php
$js = <<< JS

$("#form-rate").on('beforeSubmit', function (e) {
    e.preventDefault(); // stopping submitting
    var form = $(this);
    $.ajax({
        type: form.attr("method"),
        url:form.attr("action"),
        data: form.serialize(),
        dataType: "json",
        success: function (response) {
            
            closeModal();
            
        }
    });
    return false;
  });

JS;
$this->registerJS($js);
?>
