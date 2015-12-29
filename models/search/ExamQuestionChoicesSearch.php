<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\ExamQuestionChoices;

/**
 * ExamQuestionSearch represents the model behind the search form about `app\models\ExamQuestionChoices`.
 */
class ExamQuestionChoicesSearch extends ExamQuestionChoices
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ExamQuestionChoicesId', 'IsRightChoice', 'ExamQuestionId'], 'integer'],
            [['ChoiceDescription'], 'safe']
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
            'ExamQuestionChoicesId' => $this->ExamQuestionChoicesId,
            'ChoiceDescription' => $this->ChoiceDescription,
            'IsRightChoice' => $this->IsRightChoice,
            'ExamQuestionId' => $this->ExamQuestionId
        ]);

        return $dataProvider;
    }
}
