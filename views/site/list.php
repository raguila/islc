<?php
use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\ActiveForm;
use app\models\Users;
use app\assets\AppAsset;
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */


$this->title = 'Class List';
// $this->params['breadcrumbs'][] = $this->title;
$bundle = AppAsset::register($this);
?>
<div class="site-list">
    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Users', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'UserID',
            'StudentNumber',
            'FirstName',
            'MiddleName',
            'LastName',
            //'UserName',
            // 'Password',
            // 'UserTypeID',
             'ClassSection',
            // 'Picture',
             
            // 'EmployeeNumber',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
