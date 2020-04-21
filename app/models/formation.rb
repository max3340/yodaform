class Formation < ApplicationRecord

  paginates_per 8

  has_many :formation_users
  has_many :users , through: :formation_users
  has_many :lessons

  validates :start_date, :end_date, :name, presence: true
end
