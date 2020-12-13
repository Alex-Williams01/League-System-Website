class Player < ApplicationRecord
  #indicates a player belongs to a team
  belongs_to :team
  #validates existence of required fields
  validates :name, :kd, :playtime, :team, presence: true
  #validates playtime and kd are positive floats
  validates :playtime, :kd, numericality: { :greater_than_or_equal_to => 0, only_float: true}
end
