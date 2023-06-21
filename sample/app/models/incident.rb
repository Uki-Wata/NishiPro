## 新規追加ファイル
class Incident < ApplicationRecord
    has_many :incident_categories
    has_many :categories, through: :incident_categories
    has_many :incident_securities
    has_many :securities, through: :incident_securities
    has_many :incident_knowledges
    has_many :knowledges, through: :incident_knowledges
end
