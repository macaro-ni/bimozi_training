class Genre < ApplicationRecord
  has_many :letters, dependent: :destroy
end
