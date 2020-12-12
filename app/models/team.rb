class Team < ApplicationRecord
  belongs_to :university
  validates :name, :points, :university, presence: true
end
