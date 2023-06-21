class Knowledge < ApplicationRecord
    belongs_to :sakuin
    has_many :incident_knowledges
    has_many :incidents, through: :incident_knowledges
end
