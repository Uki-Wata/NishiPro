class IncidentKnowledge < ApplicationRecord
    belongs_to :incident
    belongs_to :knowledge
end
