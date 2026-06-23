class LearningEntry < ApplicationRecord
    validates :date, presence: true
    validates :topic, presence: true
    validates :hours, presence: true
end
