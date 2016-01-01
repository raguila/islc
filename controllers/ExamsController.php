<?php

namespace app\controllers;

use Yii;
use app\models\Exams;
use app\models\search\ExamsSearch;
use app\models\ExamQuestion;
use app\models\ExamQuestionChoices;
use app\models\ExamStudent;
use app\models\ExamStudentAnswer;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\db\ActiveRecord;
use yii\db\Query;
use yii\data\ActiveDataProvider;
use yii\web\UploadedFile;


/**
 * ExamsController implements the CRUD actions for Exams model.
 */
class ExamsController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'addquestions' => ['post'],
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Exams models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ExamsSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Exams model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Exams model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Exams();
        
        /*return $this->render('create', [
            'model' => $model,
        ]);*/
        
        //return $this->redirect(['view', 'id' => 2, 'NumQuestions' => $model->NumQuestions]);
        
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->ExamId, 'NumQuestions' => $model->NumQuestions]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Exams model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->ExamId]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Exams model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Exams model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Posts the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Exams::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    
    public function actionAddquestions()
    {
        $curModel = null;
        foreach (Yii::$app->request->post() as $name => $val)
        {
            echo htmlspecialchars($name . ': ' . $val) . "<br />";
            
            $model = null;
            if ( substr($name, 0, 8) == 'question') {
                $model = new ExamQuestion();
                $model->Question = $val;
                $model->ExamId = $_POST['ExamId'];
                
                $sql = "SELECT MAX(ExamQuestionId) AS ExamQuestionId FROM exam_question";
                $max_id = ExamQuestion::findBySql($sql)->one();
                $model->ExamQuestionId = $max_id->ExamQuestionId + 1;
                
                $model->save();
                $curModel = $model;
            }
            else if ( substr($name, 0, 10) == 'choicedesc') {
                $model = new ExamQuestionChoices();
                $model->ChoiceDescription = $val;
                $model->IsRightChoice = $_POST['isrightchoice' . substr($name,10, 12)];
                $model->ExamQuestionId = $curModel->ExamQuestionId;
                
                $sql = "SELECT MAX(ExamQuestionChoicesId) AS ExamQuestionChoicesId FROM exam_question_choices";
                $max_id = ExamQuestionChoices::findBySql($sql)->one();
                $model->ExamQuestionChoicesId = $max_id->ExamQuestionChoicesId + 1;
                
                $model->save();
            }
        }
        
        return $this->redirect(['/site/feed']);
    }
    
    public function actionSubmitexam()
    {
        $user = Yii::$app->user->identity;
    
        $examstudent = new ExamStudent();
        $examstudent->ExamId = $_POST['ExamId'];
        $examstudent->StudentId = $user->UserID;
        
        $sql = "SELECT MAX(ExamStudentId) AS ExamStudentId FROM exam_student";
        $max_id = ExamStudent::findBySql($sql)->one();
        $examstudent->ExamStudentId = $max_id->ExamStudentId + 1;
        
        $score = 0;
        foreach (Yii::$app->request->post() as $name => $val)
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
        
        foreach (Yii::$app->request->post() as $name => $val)
        {
            if ($name != '_csrf' && $name != 'ExamId') {
                $answer = new ExamStudentAnswer();
                $answer->ExamQuestionChoiceId = $val;
                $answer->UserId = $user->UserID;
                
                $sql2 = "SELECT MAX(ExamStudentAnswerId) AS ExamStudentAnswerId FROM exam_student_answer";
                $max_id2 = ExamStudentAnswer::findBySql($sql2)->one();
                $answer->ExamStudentAnswerId = $max_id2->ExamStudentAnswerId + 1;
                
                $answer->save();
            }
        }
        
        return $this->redirect(['/site/feed']);
    }
}
