<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\RatesAdmin */

$this->title = Yii::t('app', 'Create Rates Admin');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Rates Admins'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="rates-admin-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
