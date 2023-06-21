## 新規追加ファイル
class IncidentSecurity < ApplicationRecord
  belongs_to :incident
  belongs_to :security
end
