<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\PwUsers */

$this->title = Yii::t('app', 'Create Pw Users');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Pw Users'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pw-users-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
