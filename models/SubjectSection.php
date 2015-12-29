<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "subject_section".
 *
 * @property integer $SubjectSectionId
 * @property string $SectionType
 * @property string $SectionName
 * @property integer $SubjectId
 *
 * @property SubjectSectionUsers[] $subjectSectionUsers
 */
class SubjectSection extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'subject_section';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['SectionType'], 'string', 'max' => 15],
            [['SectionName'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'SubjectSectionId' => 'Subject Section ID',
            'SectionType' => 'Section Type',
            'SectionName' => 'Section Name',
            'SubjectId' => 'Subject ID'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSubjectSectionUsers()
    {
        return $this->hasMany(SubjectSectionUsers::className(), ['SubjectSectionId' => 'SubjectSectionId']);
    }
}
