class Formation < ApplicationRecord
  has_many :formation_users
  has_many :users , through: :formation_users
end
