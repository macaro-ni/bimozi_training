class Letter < ApplicationRecord
  has_many :practice_records,dependent: :destroy
  belongs_to :genre
  belongs_to :user
  has_many :favorites,dependent: :destroy
  
  
end
