<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "exam_student".
 *
 * @property integer $ExamStudentId
 * @property integer $Score
 * @property integer $ExamId
 * @property integer $StudentId
 */
class ExamStudent extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'exam_student';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ExamStudentId', 'Score', 'ExamId', 'StudentId'], 'required'],
            [['ExamStudentId', 'Score', 'ExamId', 'StudentId'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ExamStudentId' => 'Exam Student ID',
            'Score' => 'Score',
            'ExamId' => 'Exam ID',
            'StudentId' => 'Student ID',
        ];
    }
}