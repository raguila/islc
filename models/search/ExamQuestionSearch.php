<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\ExamQuestion;

/**
 * ExamQuestionSearch represents the model behind the search form about `app\models\ExamQuestion`.
 */
class ExamQuestionSearch extends ExamQuestion
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ExamQuestionId', 'ExamId'], 'integer'],
            [['Question'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Exams::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'ExamQuestionId' => $this->ExamQuestionId,
            'Question' => $this->Question,
            'ExamId' => $this->ExamId
        ]);

        return $dataProvider;
    }
}
