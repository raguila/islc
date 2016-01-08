<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "exams".
 *
 * @property integer $ExamId
 * @property string $Message
 * @property integer $MaxScore
 * @property integer $IsActive
 * @property integer $SubjectSectionid
 *
 * @property ExamQuestion[] $examQuestions
 * @property SubjectSection $subjectSection
 */
class Exams extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'exams';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['MaxScore', 'IsActive', 'SubjectSectionId', 'NumQuestions'], 'integer'],
            [['Message'], 'string', 'max' => 200],
            [['Description'], 'string', 'max' => 20],
            [['CreatedBy'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ExamId' => 'Exam ID',
            'Message' => 'Message',
            'Description' => 'Description',
            'CreatedBy' => 'Created By',
            'MaxScore' => 'Max Score',
            'NumQuestions' => 'Number of Questions',
            'IsActive' => 'Is Active',
            'SubjectSectionId' => 'Section'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getExamQuestions()
    {
        return $this->hasMany(ExamQuestion::className(), ['ExamId' => 'ExamId']);
    }
    
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSubjectSection()
    {
        return $this->hasOne(SubjectSection::className(), ['SubjectSectionId' => 'SubjectSectionId']);
    }
}
