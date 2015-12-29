<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "exam_question_choices".
 *
 * @property integer $ExamQuestionChoicesId
 * @property string $ChoiceDescription
 * @property integer $IsRightChoice
 * @property integer $ExamQuestionId
 *
 */
class ExamQuestionChoices extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'exam_question_choices';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['IsRightChoice', 'ExamQuestionId'], 'integer'],
            [['ChoiceDescription'], 'string', 'max' => 120]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ExamQuestionChoicesId' => 'Exam Question Choices ID',
            'ChoiceDescription' => 'Choice Description',
            'IsRightChoice' => 'Is Right Choice',
            'ExamQuestionId' => 'Exam Question ID'
        ];
    }
}
