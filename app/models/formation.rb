class Formation < ApplicationRecord
  has_many :formation_users
  has_many :users , through: :formation_users

  validates :start_date, :end_date, :name, presence: true
end
