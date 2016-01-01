<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "exam_student_answer".
 *
 * @property integer $ExamStudentAnswer
 * @property integer $ExamQuestionChoiceId
 * @property integer $UserId
 */
class ExamStudentAnswer extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'exam_student_answer';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ExamStudentAnswerId', 'ExamQuestionChoiceId', 'UserId'], 'required'],
            [['ExamStudentAnswerId', 'ExamQuestionChoiceId', 'UserId'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ExamStudentAnswerId' => 'Exam Student Answer ID',
            'ExamQuestionChoiceId' => 'Exam Question Choice ID',
            'UserId' => 'User ID',
        ];
    }
}