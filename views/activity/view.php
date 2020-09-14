<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\web\View;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $model app\models\Activity */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Activities'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="activity-view">
    <p>
        <?php //  Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= $model->status == '1' ? '' : Html::a('Complate', ['complate', 'id' => $model->id], [
            'class' => 'btn btn-success',
            'id' => 'order-complate',
            // 'data' => [
            //     'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
            //     'method' => 'post',
            // ],
        ]) ?>

<?php   Html::a('Complate', ['complate', 'id' => $model->id], [
            'class' => 'btn btn-success',
            'id' => 'order-complate',
            // 'data' => [
            //     'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
            //     'method' => 'post',
            // ],
        ]) ?>
    </p>
    <?php Pjax::begin(['id' => 'order-view']); ?>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'created',
            'vat_local',
            'txid',
            [  
                'label' => 'สถานะ',
                'format' => 'raw',
                'value' => function ($model) {
                    if ($model->status == '1') {
                        return '<span class="right badge badge-success">Complate</span>';
                    } elseif ($model->status == '2') {
                        return '<span class="right badge badge-danger">Cancel</span>';
                    } elseif ($model->status == '3') {
                        return '<span class="right badge badge-warning">Pending</span>';
                    } else {
                        return '-';
                    }
                }
            ],
            'mt4',
            'local_amount',
            'exchange_rate',
            'currency',
            'bankname_customer',
            'bank_account_name',
            'amount_usd'
        ],
    ]) ?>
    <?php Pjax::end(); ?>

</div>

<?php
$js = <<< JS

$('#order-complate').click(function (e) { 
    e.preventDefault();
    // alert();
    var url = $(this).attr('href');
    $.ajax({
        type: "post",
        url: url,
        dataType: "json",
        success: function (response) {
            if(response.status){
                sendComplate(response.notify,response.txid)
                $.pjax.reload({container: '#order-view', async: false});

            }
        }
    });
});
function sendComplate(notify,txid) {
    $.ajax({
        type: "post",
        url: notify,
        data: {
            status:true,
            txid:txid
        },
        dataType: "json",
        success: function (response) {
            if(response){
                $.pjax.reload({container: '#order-view', async: false});
            }
        },
        error: function (jqXhr, textStatus, errorMessage) {
            // $('p').append('Error' + errorMessage);
            console.log(errorMessage);
    }
    });
}

JS;
$this->registerJS($js,View::POS_END);
?>