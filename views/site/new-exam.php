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
    
    <?php
    $i = 0;
    $j = 0;
    $model = new Exams();
    $questions[0] = new ExamQuestion();
    $choices[0] = new ExamQuestionChoices();
    
    if (isset($_POST['action'])) {
        switch ($_POST['action']) {
            case 'insert':
                insert();
                break;
            case 'select':
                select();
                break;
        }
    }
    
    function select() {
        echo "The select function is called.";
        $i = $i + 1;
        exit;
    }
    
    function insert() {
        echo "The insert function is called.";
        $i = $i + 1;
        exit;
    }
    ?>

    <?= $form->field($model, 'Message')->textarea(['maxlength' => 200]) ?>

    <?= $form->field($model, 'MaxScore')->textInput(['maxlength' => 30, 'type' => 'number']) ?>
    
    <? ChromePhp::log($model);?>
    
    
    
    <br />
    <div class="form-group">
        <?= Html::submitButton('Create', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

    <code><?= __FILE__ ?></code>
</div>
