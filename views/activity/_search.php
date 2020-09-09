<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;
use kartik\datecontrol\DateControl;

?>

<div class="activity-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'id' =>'activity-search',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>
<div class="row">
<div class="col-4">
<?php
echo $form->field($model, 'date1')->widget(DateControl::classname(), [
    'type'=>DateControl::FORMAT_DATE,
    'ajaxConversion'=>false,
    'widgetOptions' => [
        'pluginOptions' => [
            'autoclose' => true
        ]
    ]
])->label('เริ่มต้น');
?>
</div>
<div class="col-4">
<?php
echo $form->field($model, 'date2')->widget(DateControl::classname(), [
    'type'=>DateControl::FORMAT_DATE,
    'ajaxConversion'=>false,
    'language' => 'th',
    'widgetOptions' => [
        'pluginOptions' => [
            'autoclose' => true
        ],
        'pluginEvents' =>[
            "changeDate" => "function(e) {  $(this).submit()}",
        ]  
    ],
    
])->label('สินสุด');
?>
</div>
<div class="col-3">
<div style="margin-top: 27px;">
<?=$form->field($model, 'type')->inline()->radioList(['1' => 'ฝาก','2' => 'ถอน'], [
    'itemOptions' => [
        'style' => 'margin-left: -30%;',
        'class' => 'type_status',
        
    ],
    ])->label(false)?>
    </div>

</div>
</div>




    <div class="form-group">
        <?php Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?php Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
<?php
$js = <<< JS

$('.type_status').click(function (e) { 
    // e.preventDefault();
  
    
var nonUI = false;
try {
    nonUI = parameters.nonUI;
} catch (e) {}
var checked = nonUI ? !this.checked : this.checked;
// alert('Checked = ' + checked);
var value = e.target.value;
if(checked == true){

$('#activity-search').submit();
}
    
});
JS;
$this->registerJS($js);
?>
