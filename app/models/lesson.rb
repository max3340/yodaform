class Lesson < ApplicationRecord
  belongs_to :formation

  has_one_attached :cover_photo
end
