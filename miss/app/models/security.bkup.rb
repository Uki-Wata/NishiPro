class Security < ApplicationRecord
    has_many :small_securities
    has_many :smalls, through: :small_securities
end
