class IncidentCategory < ApplicationRecord
    belongs_to :incident
    belongs_to :category
end
