<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\widgets\ActiveForm;
use app\models\Exams;
use app\models\ExamQuestion;
use app\models\ExamQuestionChoices;

/* @var $this yii\web\View */
/* @var $model app\models\Exams */

$this->title = 'Test';
$this->params['breadcrumbs'][] = ['label' => 'Exams', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="exams-view">

    <h1><?= Html::encode($this->title) ?></h1>
    
    <?php
    $curModel = null;
    foreach ($_POST as $name => $val)
    {
        echo htmlspecialchars($name . ': ' . $val) . "<br />";
        
        /*$model = null;
        if ( substr($name, 0, 8) == 'question') {
            $model = new ExamQuestion();
            $model->Question = $val;
            $model->ExamId = $_POST['ExamId'];
            
            //$model->save();
            //$curModel = $model;
        }
        else if ( substr($name, 0, 10) == 'choicedesc') {
            $model = new ExamQuestionChoices();
            $model->ChoiceDescription = $val;
            $model->IsRightChoice = $_POST['isrightchoice' . substr($name,10, 12)];
            //$model->ExamQuestionId = $curModel->ExamQuestionId;
            //$model->save();
        }*/
    }
    
    //return $this->redirect(['index.php?r=site%2Ffeed']);
    ?>
</div>
