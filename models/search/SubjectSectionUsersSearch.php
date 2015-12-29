<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\SubjectSectionUsers;

/**
 * SubjectSectionUsersSearch represents the model behind the search form about `app\models\SubjectSectionUsers`.
 */
class SubjectSectionUsersSearch extends SubjectSectionUsers
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['SubjectSectionUserId', 'SubjectSectionId', 'UserId'], 'integer'],
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
        $query = SubjectSectionUsers::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'SubjectSectionUserId' => $this->SubjectSectionUserId,
            'SubjectSectionId' => $this->SubjectSectionId,
            'UserId' => $this->UserId
        ]);

        return $dataProvider;
    }
}
