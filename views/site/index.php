<?php
use app\models\User;
/* @var $this yii\web\View */
use yii\helpers\Html;
use kartik\grid\GridView;
$this->title = 'Miracle Wallet';
?>
<div class="card">
    <div class="card-header">
       รายการ
    </div>
    <div class="card-body">

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'business_name',
            [
                'header' => 'ยอดเงิน',
                'value' => function($model){
                        return isset($model->userWallet) ? $model->userWallet->amount : '-';
                }
            ],
            [
                'header' => 'ยอดฝากทั้งหมด',
                'value' => function($model){
                    return $model->deposit();
                }
            ],
            [
                'header' => 'ยอดถอนทั้งหมด',
                'value' => function($model){
                    return $model->withdraw();
                }
            ],
            [
                'header' => 'ค่าธรรมเนียม',
                'value' => function($model){
                    return $model->vatLocal();
                }
            ],
            [
                'width' =>'100px',
                'template' =>'{view}',
                'class' => 'app\grid\ActionColumn',
                'buttons'=>[
                    'view' => function($url,$model,$key){
                        return Html::a('<i class="far fa-eye"></i>',['/activity','id' => $model->id]);
                      }
                    ]
                
            ],
        ],
    ]); ?>

    </div>
    <div class="card-footer text-muted">
        Footer
    </div>
</div>