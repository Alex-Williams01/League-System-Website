class University < ApplicationRecord
  #defines that a University has many teams, and if a university is destroyed so is the team
  has_many :teams, dependent: :destroy
  #validates that the name and address fields exist
  validates :name, :address, presence: true
  #validates that the name of the University is unique
  validates :name, uniqueness: true
end
