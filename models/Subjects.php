<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "subject".
 *
 * @property integer $SubjectId
 * @property string $CourseCode
 * @property string $CourseTitle
 * @property integer $Units
 *
 * @property SubjectSection[] $subjectSections
 */
class Subject extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'subject';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Units'], 'integer'],
            [['CourseCode'], 'string', 'max' => 10],
            [['CourseTitle'], 'string', 'max' => 30]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'SubjectId' => 'Subject ID',
            'CourseCode' => 'Course Code',
            'CourseTitle' => 'Course Title',
            'Units' => 'Units'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSubjectSection()
    {
        return $this->hasMany(SubjectSection::className(), ['SubjectId' => 'SubjectId']);
    }
}
