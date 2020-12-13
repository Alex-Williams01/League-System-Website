class University < ApplicationRecord
  has_many :teams, dependent: :destroy
  validates :name, :address, presence: true
  validates :name, uniqueness: true
end
