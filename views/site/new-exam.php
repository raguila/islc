<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Exams;
use app\models\ExamQuestion;
use app\models\ExamQuestionChoices;

$this->title = 'New exam';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="site-new-exam">
    <h1><?= Html::encode($this->title) ?></h1>

    <?php $form = ActiveForm::begin(['id' => 'surveyForm']); ?>
    

    <?= $form->field($model, 'Message')->textarea(['maxlength' => 200]) ?>

    <?= $form->field($model, 'MaxScore')->textInput(['maxlength' => 30, 'type' => 'number']) ?>
    
    
    
    
    <br />
    <div class="form-group">
        <?= Html::submitButton('Create', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

    <code><?= __FILE__ ?></code>
</div>
