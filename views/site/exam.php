<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\widgets\ActiveForm;
use app\models\Exams;
use app\models\ExamQuestion;
use app\models\ExamQuestionChoices;
use app\models\ExamStudent;

/* @var $this yii\web\View */
/* @var $model app\models\Exams */

$this->title = $id;
$this->params['breadcrumbs'][] = ['label' => 'Exams', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="exams-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php $model = Exams::findOne($id); ?>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'Message',
            'MaxScore',
            'NumQuestions',
        ],
    ]) ?>
    
    
    <?php
    $result = ExamStudent::findOne(['ExamId' => $id, 'StudentId' => Yii::$app->user->identity->UserID]);
    
    if ($result) {
        echo ('<h3>Score: ' . $result->Score . '</h3>');
    } else {
        echo ('<h2>Questions</h2> <br />');
        
        $i = 1;
        $questions = ExamQuestion::findAll(['ExamId' => $id]);
        $form = ActiveForm::begin(['method' => 'post', 'action' => 'index.php?r=exams%2Fsubmitexam']);
            foreach ($questions as $question) { 
                echo ( '<p> #' . $i . '. ' . $question->Question . '</p>');
                
                $choices = ExamQuestionChoices::findAll(['ExamQuestionId' => $question->ExamQuestionId]);
                foreach ($choices as $choice) {
                    echo('<input type="radio" name="'.$question->ExamQuestionId.'" id="'.$choice->ExamQuestionChoicesId.'" value="'.$choice->ExamQuestionChoicesId.'" /><label for="'.$choice->ExamQuestionChoicesId.'"> '.$choice->ChoiceDescription.'</label><br />');
                }
                
                echo('<br /><br />');
                $i++;
            }
            
        echo '<input type="hidden" name="ExamId" value="'. $model->ExamId. '">';
        
        echo '<div class="form-group">';
        Html::submitButton('I am finished!', ['class' => 'btn btn-success']);
        echo  '</div>';
        
        ActiveForm::end();
    }
        
    
     ?>
        
    
    
    
    
    

</div>
