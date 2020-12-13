class Match < ApplicationRecord
  #defines that a match has many teams, and belongs to many teams
  has_and_belongs_to_many :teams
  #validates presence of fields
  validates :match_time, :teams, presence: true
  #validates function below
  validate :validate_teams

  #validates that a match has exactly two teams
  def validate_teams
    errors.add(:teams, "wrong number of teams") if teams.size != 2
  end
end
