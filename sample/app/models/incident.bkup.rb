## 新規追加ファイル
class Incident < ApplicationRecord
    has_many :incident_securities
    has_many :securities, through: :incident_securities
end
