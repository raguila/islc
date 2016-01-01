<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\widgets\ActiveForm;
use app\models\Exams;
use app\models\ExamQuestion;
use app\models\ExamQuestionChoices;

/* @var $this yii\web\View */
/* @var $model app\models\Exams */

$this->title = $model->ExamId;
$this->params['breadcrumbs'][] = ['label' => 'Exams', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="exams-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->ExamId], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->ExamId], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'ExamId',
            'Message',
            'Description',
            'MaxScore',
            'NumQuestions',
            'IsActive',
            'SubjectSectionId',
        ],
    ]) ?>
    
    <h2>Questions</h2> <br />
    
        <?php
                $questions = [];
                $choices = [];
                
        ?>
    
    
    <?php $form = ActiveForm::begin(['method' => 'post', 'action' => 'index.php?r=exams%2Faddquestions&id=' . $model->ExamId]); ?>
        <?php for ($i = 0; $i < $model->NumQuestions; $i++) { ?>
                <?php echo ("Question #" . ($i + 1)); ?>
                <br />
                
                <?php $questions[$i] = new ExamQuestion(); ?>
                
                <?= $form->field($questions[$i], 'Question')->textarea(['maxlength' => 200, 'name' => 'question' . $i ]) ?>
    
                <div style="margin-left: 30px">
                    <h4>Choices</h4>
                    
                    <?php $choices[$i][0] = new ExamQuestionChoices(); ?>
                    <?php $choices[$i][1] = new ExamQuestionChoices(); ?>
                    <?php $choices[$i][2] = new ExamQuestionChoices(); ?>
                    <?php $choices[$i][3] = new ExamQuestionChoices(); ?>
                    
                    <?= $form->field($choices[$i][0], 'ChoiceDescription')->textInput(['maxlength' => 120, 'name' => 'choicedesc' . $i . '0']) ?>
                    
                    <?= $form->field($choices[$i][0], 'IsRightChoice')->checkbox(['name' => 'isrightchoice' . $i . '0']) ?>
                    
                    <?= $form->field($choices[$i][1], 'ChoiceDescription')->textInput(['maxlength' => 120, 'name' => 'choicedesc' . $i . '1']) ?>
                    
                    <?= $form->field($choices[$i][1], 'IsRightChoice')->checkbox(['name' => 'isrightchoice' . $i . '1']) ?>
                    
                    <?= $form->field($choices[$i][2], 'ChoiceDescription')->textInput(['maxlength' => 120, 'name' => 'choicedesc' . $i . '2']) ?>
                    
                    <?= $form->field($choices[$i][2], 'IsRightChoice')->checkbox(['name' => 'isrightchoice' . $i . '2']) ?>
                    
                    <?= $form->field($choices[$i][3], 'ChoiceDescription')->textInput(['maxlength' => 120, 'name' => 'choicedesc' . $i . '3']) ?>
                    
                    <?= $form->field($choices[$i][3], 'IsRightChoice')->checkbox(['name' => 'isrightchoice' . $i . '3']) ?>
                </div>
        <?php } ?>
        
        <?php 
        echo '<input type="hidden" name="ExamId" value="'. $model->ExamId. '">';
        ?>
        
    
    <div class="form-group">
        <?= Html::submitButton('Create exam questions', ['class' => 'btn btn-success']) ?>
    </div>
    
    <?php ActiveForm::end(); ?>
    
    

</div>
