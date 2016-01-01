<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Exams */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="exams-form">
    
    <?php $form = ActiveForm::begin(); ?>

    <?php //$form->field($model, 'ExamId')->textInput(['type' => 'number']) ?>

    <?= $form->field($model, 'Message')->textArea(['maxlength' => 200]) ?>
    
    <?= $form->field($model, 'Description')->textInput(['maxlength' => 20]) ?>

    <?= $form->field($model, 'MaxScore')->textInput(['type' => 'number']) ?>
    
    <?= $form->field($model, 'NumQuestions')->textInput(['type' => 'number']) ?>

    <?= $form->field($model, 'IsActive')->textInput(['type' => 'number']) ?>

    <?= $form->field($model, 'SubjectSectionId')->textInput(['type' => 'number']) ?>
    
    

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
