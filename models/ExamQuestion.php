<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "exam_question".
 *
 * @property integer $ExamQuestionId
 * @property string $Question
 * @property integer $ExamId
 *
 * @property ExamQuestionChoices[] $examQuestionChoices
 */
class ExamQuestion extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'exam_question';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ExamId'], 'integer'],
            [['Question'], 'string', 'max' => 200]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ExamQuestionId' => 'Exam Question ID',
            'Question' => 'Question',
            'ExamId' => 'Exam ID'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getExamQuestionChoices()
    {
        return $this->hasMany(ExamQuestionChoices::className(), ['ExamQuestionId' => 'ExamQuestionId']);
    }
}
