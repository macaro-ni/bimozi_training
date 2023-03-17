class Letter < ApplicationRecord
  has_many :practice_records,dependent: :destroy
  belongs_to :genre
end
