<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Exams */

$this->title = 'Update Exams: ' . ' ' . $model->ExamId;
$this->params['breadcrumbs'][] = ['label' => 'Exams', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ExamId, 'url' => ['view', 'id' => $model->ExamId]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="comments-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
