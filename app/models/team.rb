class Team < ApplicationRecord
  #defines that each team belongs to a university
  belongs_to :university
  #validates each field exists
  validates :name, :points, :university, presence: true
end
