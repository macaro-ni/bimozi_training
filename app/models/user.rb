class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :practice_records,dependent: :destroy
  has_many :favorites,dependent: :destroy
  has_many :letters,dependent: :destroy
  
  #ゲストログイン機能のため追加
  def self.guest
    find_or_create_by!(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      #user.password_confirmation = user.password
      #user.name = "ゲストユーザー"
    end
  end
  
  # お気に入り機能のため追加
  def favorite_find(letter_id)
    favorites.where(letter_id: letter_id).exists?
  end

end
