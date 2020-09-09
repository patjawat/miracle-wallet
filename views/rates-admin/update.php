<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\RatesAdmin */

$this->title = Yii::t('app', 'Update Rates Admin: {name}', [
    'name' => $model->id,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Rates Admins'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="rates-admin-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
