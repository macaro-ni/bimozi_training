class PracticeRecord < ApplicationRecord
  belongs_to :user
  belongs_to :letter
  has_one_attached :image
end
