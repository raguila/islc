<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\ExamStudent;

/**
 * ExamStudentSearch represents the model behind the search form about `app\models\ExamStudent`.
 */
class ExamStudentSearch extends ExamStudent
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ExamStudentId', 'Score', 'ExamId', 'StudentId'], 'integer'],
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
        $query = ExamStudent::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'ExamStudentId' => $this->ExamStudentId,
            'Score' => $this->Score,
            'ExamId' => $this->ExamId,
            'StudentId' => $this->StudentId,
        ]);

        return $dataProvider;
    }
}
