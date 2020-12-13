class Team < ApplicationRecord
  #defines a team has many players
  has_many :players, dependent: :destroy
  #defines that each team belongs to a university
  belongs_to :university
  #validates each field exists
  validates :name, :points, :university, presence: true
end
