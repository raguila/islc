<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\widgets\ActiveForm;
use app\models\Exams;
use app\models\User;
use app\models\Users;
use app\models\ExamStudent;
use app\models\ExamStudentAnswer;
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
    $user = Yii::$app->user->identity;

    $examstudent = new ExamStudent();
    $examstudent->ExamId = $_POST['ExamId'];
    $examstudent->StudentId = $user->UserID;
    
    $sql = "SELECT MAX(ExamStudentId) AS ExamStudentId FROM exam_student";
    $max_id = ExamStudent::findBySql($sql)->one();
    $examstudent->ExamStudentId = $max_id->ExamStudentId + 1;
    
    $score = 0;
    foreach ($_POST as $name => $val)
    {
        if ($name != '_csrf' && $name != 'ExamId') {
            $choice = ExamQuestionChoices::findOne($val);
            if ($choice->IsRightChoice == 1) {
                $score++;
            }
        }
    }
    
    $examstudent->Score = $score;
    $examstudent->save();
    
    foreach ($_POST as $name => $val)
    {
        if ($name != '_csrf' && $name != 'ExamId') {
            $answer = new ExamStudentAnswer();
            $answer->ExamQuestionChoiceId = $val;
            $answer->UserId = $user->UserID;
            
            $sql2 = "SELECT MAX(ExamStudentAnswerId) AS ExamStudentAnswerId FROM exam_student_answer";
            $max_id2 = ExamStudentAnswer::findBySql($sql)->one();
            $answer->ExamStudentAnswerId = $max_id->ExamStudentAnswerId + 1;
            
            $answer->save();
        }
    }
    
    //return $this->redirect(['index.php?r=site%2Ffeed']);
    ?>
</div>
