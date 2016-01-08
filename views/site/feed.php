<?php
use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\ActiveForm;
use app\models\Users;
use app\models\Comments;
use app\assets\AppAsset;
use app\models\Exams;
use app\models\SubjectSection;
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */


$this->title = 'Dashboard';
// $this->params['breadcrumbs'][] = $this->title;
$bundle = AppAsset::register($this);
?>
<div class="site-feed">
    <div class="medium-space"></div>
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
            <img src="<?=$bundle->baseUrl.'/images/'.Yii::$app->user->identity->Picture?>" height="120px" width="120px"></img>
            <br>
            <br>
            </div>

            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
            <div class="medium-space"></div>
            <?= Yii::$app->user->identity->FirstName ?> 
            <?= Yii::$app->user->identity->LastName ?>
            <br>
            <?php
            
            $userType = Yii::$app->user->identity->UserTypeID;
            if ($userType == 1) {
                echo 'Administrator';
            } else if ($userType == 2) {
                echo 'Professor';
            } else if ($userType == 3) {
                echo ('CMSC 2 - ');
                echo Yii::$app->user->identity->ClassSection;
            }
            ?>
            <br>
            <?= Yii::$app->user->identity->StudentNumber ?>
            </div>
        </div>

        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 col-md-push-6 col-lg-push-6">
            <br>
            <ul class="list-group" style="margin-bottom:5px;">
                
            </ul>
        </div>
        
        <br>
            
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-md-pull-3 col-lg-pull-3">
          <?php $form = ActiveForm::begin();
          if (Yii::$app->user->identity->UserTypeID != 3) {
            echo '<div class="form-inline">';
                echo '<button onclick="showNewExam()" class="btn btn-primary pull-left newExam">Create new exam</button>';
            echo '</div>';
          }
            
          ActiveForm::end(); ?>
        </div>
        
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 ">
            
        </div>
        
         <div class="col-xs-12 col-sm-12 col-md-3 col-md-push-6 col-lg-3 col-lg-push-6">
            
        </div>
        
        <div class="col-xs-12 col-sm-12 col-md-6 col-md-pull-3 col-lg-6 col-lg-pull-3">
            <h4>Exams</h3>
            
            <ul class="list-group">
                <li class="list-group-item">
                
                <?php foreach ($exams as $exam): ?>
                    <?php
                    $section = SubjectSection::findOne(['SubjectSectionId' => $exam->SubjectSectionId]);
                    if (Yii::$app->user->identity->ClassSection == $section->SectionName) {
                        if ($exam->IsActive) {
                            echo ( '<a href="index.php?r=site%2Fexam&id=' . $exam->ExamId . '"><h4>' . $exam->Description .'</h4></a> created by ' . $exam->CreatedBy );
                        } else {
                            echo ( '<a>' . $exam->Description . '</a>' );
                        }
                    }
                    ?>
                    <br />
                <?php endforeach; ?>
                </li>
            </ul>
         </div>

    </div>
</div>
