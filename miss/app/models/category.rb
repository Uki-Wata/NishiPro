## 新規追加ファイル
class Category < ApplicationRecord
    has_many :incident_categories
    has_many :incidents, through: :incident_categories
end
