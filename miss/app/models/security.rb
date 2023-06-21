class Security < ApplicationRecord
    has_many :small_securities
    has_many :smalls, through: :small_securities
## 追加箇所
##  belongs_to :small, through: :small_securities
    has_many :incident_securities
    has_many :incidents, through: :incident_securities
end