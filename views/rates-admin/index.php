<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\RatesAdminSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Exchange Rate';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="rates-admin-index">
    <p>
        <?php //  Html::a(Yii::t('app', 'Create Rates Admin'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

<div class="card">
    <div class="card-header">
        แสดงรายการ
    </div>
    <div class="card-body">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'rates_type',
            'rates_buy',
            
            'rates_sell',
            ['class' => 'yii\grid\ActionColumn',
            'buttons' => [
                'update' => function ($url, $model, $key) {
                    return Html::a('<i class="far fa-edit"></i>',$url, [
                        'class' => 'modal-show',
                    ]);
                },
                
            ]
        ],

        ],
    ]); ?>
    </div>
    <!-- <div class="card-footer text-muted">

    </div> -->
</div>
    <?php Pjax::end(); ?>

</div>
