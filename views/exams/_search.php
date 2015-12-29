<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\search\CommentsSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="comments-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'ExamId') ?>

    <?= $form->field($model, 'Message') ?>

    <?= $form->field($model, 'MaxScore') ?>

    <?= $form->field($model, 'IsActive') ?>

    <?= $form->field($model, 'SubjectSectionId') ?>

    <?php // echo $form->field($model, 'PostID') ?>

    <?php // echo $form->field($model, 'Like') ?>

    <?php // echo $form->field($model, 'TimeStamp') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
