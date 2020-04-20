class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:teacher, :student]

  has_many :formation_users
  has_many :formations, through: :formation_users

  after_initialize do
  if self.new_record?
    self.role ||= :student
  end
end

end
