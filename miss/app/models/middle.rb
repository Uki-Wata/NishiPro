class Middle < ApplicationRecord
  belongs_to :big
  has_many :smalls
end
