<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "subject_section_users".
 *
 * @property integer $SubjectSectionUserId
 * @property integer $SubjectSectionId
 * @property integer $UserId
 *
 * @property SubjectSection $subjectSection
 * @property User[] $users
 */
class SubjectSectionUsers extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'subject_section_users';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['UserId', 'SubjectSectionId'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'SubjectSectionUserId' => 'Subject Section User ID',
            'SubjectSectionId' => 'Subject Section ID',
            'UserId' => 'User ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSubjectSection()
    {
        return $this->hasOne(SubjectSection::className(), ['SubjectId' => 'SubjectId']);
    }
    
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUsers()
    {
        return $this->hasMany(SubjectSection::className(), ['UserId' => 'UserId']);
    }
}
