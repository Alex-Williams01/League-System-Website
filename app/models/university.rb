class University < ApplicationRecord
  validates :name, :address, presence: true
  validates :name, uniqueness: true
  has_many :teams, dependent: :destroy
end
