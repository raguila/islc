<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Exams;

/**
 * ExamsSearch represents the model behind the search form about `app\models\Exams`.
 */
class ExamsSearch extends Exams
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ExamId', 'MaxScore', 'NumQuestions', 'IsActive', 'SubjectSectionid'], 'integer'],
            [['Message', 'Description'], 'safe'],
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
            'ExamId' => $this->ExamId,
            'Message' => $this->Message,
            'Decription' => $this->Decription,
            'MaxScore' => $this->MaxScore,
            'NumQuestions' => $this->NumQuestions,
            'IsActive' => $this->IsActive
        ]);

        return $dataProvider;
    }
}
