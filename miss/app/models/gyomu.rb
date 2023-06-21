class Gyomu < ApplicationRecord
  belongs_to :small
  has_many :gyomu_securities
  has_many :securities, through: :gyomu_securities
end
