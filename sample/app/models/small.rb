class Small < ApplicationRecord
  belongs_to :middle
  has_many :small_securities
  has_many :securities, through: :small_securities
end
