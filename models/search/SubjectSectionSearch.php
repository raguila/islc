<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\SubjectSection;

/**
 * SubjectSectionSearch represents the model behind the search form about `app\models\SubjectSection`.
 */
class SubjectSectionSearch extends SubjectSection
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['SubjectSectionId', 'SubjectId'], 'integer'],
            [['SectionType', 'SectionName'], 'safe'],
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
        $query = SubjectSection::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'SubjectSectionId' => $this->SubjectSectionId,
            'SectionType' => $this->SectionType,
            'SectionName' => $this->SectionName,
            'SubjectId' => $this->SubjectId
        ]);

        return $dataProvider;
    }
}
