class Team < ApplicationRecord
  #defines a team has many players
  has_many :players, dependent: :destroy
  #defines that each team belongs to a university
  belongs_to :university
  #defines that each team has and belongs to many matches
  has_and_belongs_to_many :matches
  #validates each field exists
  validates :name, :points, :university, presence: true
end
