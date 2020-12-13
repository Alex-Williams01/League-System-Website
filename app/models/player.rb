class Player < ApplicationRecord
  #indicates a player belongs to a team
  belongs_to :team
  #validates existence of required fields
  validates :name, :kd, :playtime, :team, presence: true
end
