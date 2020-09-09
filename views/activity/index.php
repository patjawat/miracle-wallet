<?php

use kartik\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\Html;
use yii\web\View;
/* @var $this yii\web\View */
/* @var $searchModel app\models\ActivitySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'TranSections');
$this->params['breadcrumbs'][] = $this->title;
?>
  <?php Pjax::begin();?>
<?php
$layout = <<< HTML
<div class="clearfix"></div>
<div class="card">
              <div class="card-header">
                <h3 class="card-title"><i class="fas fa-list-ul"></i> {$this->title} Lists</h3>

                <div class="card-tools">
                 <div style="width: 800px;">
                    {$this->render('_search',['model'=>$searchModel])}
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
              {items}
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <ul class="pagination pagination-sm m-0 float-left">
                {summary}
                </ul>
                <ul class="pagination pagination-sm m-0 float-right">
                  {pager}
                </ul>
              </div>
            </div>

HTML;

?>

<div class="activity-index">
    <?=GridView::widget([
    'dataProvider' => $dataProvider,
    'layout' => $layout,
    'columns' => [
        [
            'header' => 'วันที่',
            'value' => function ($model) {
                $getDate = new DateTime();
                $getDate->setTimestamp($model->created);
                $date = $getDate->format('Y-m-d H:i:s');
                return $date;
            },
        ],
        [
            'header' => 'ชื่อ',
            'value' => function ($model) {
                return $model->name;
            },
        ],
        [
            'header' => 'MT4',
            'value' => function ($model) {
                return $model->mt4;
            },
        ],
        [
            'header' => 'บัญชีธนาคาร',
            'format' => 'raw',
            'value' => function ($model) {
                // return $model->name
                // return 'เอา Logo มาใส่ ชื่อ field คือ bank_account_name ';
                return $model->bankname_customer . '<br>' . $model->bank_account_name . '  ' . $model->bank_account_number;
            },
        ],
        [
            'header' => 'Local Amount',
            'value' => function ($model) {
                return $model->local_amount;
            },
        ],
        [
            'header' => 'Status',
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
            },
        ],
        [
            'header' => 'Status Broker',
            'format' => 'raw',
            'value' => function ($model) {
                if ($model->status_broker == '1') {
                    return '<span class="right badge badge-success">Complate</span>';
                } elseif ($model->status == '2') {
                    return '<span class="right badge badge-danger">Cancel</span>';
                } elseif ($model->status == '3') {
                    return '<span class="right badge badge-warning">Pending</span>';
                } else {
                    return '-';
                }
            },
        ],
        [
            'header' =>'Process',
            'value' => function ($model) {
                return $model->processuser();
                // return strtotime($model->created);
                // $getDate = new DateTime();
                // $getDate->setTimestamp($model->created);
                // $date = $getDate->format('Y-m-d H:i:s');
                // return $date;
            }
        ],
        ['class' => 'yii\grid\ActionColumn',
                    'buttons' => [
                        'view' => function ($url, $model, $key) {
                            return Html::a('<i class="far fa-eye"></i>',$url, [
                                'class' => 'modal-show',
                            ]);
                        },
                        
                    ]
                ],
    ],
]);?>
</div>

<?php Pjax::end();?>