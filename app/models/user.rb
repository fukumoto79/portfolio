class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :comments  # commentsテーブルとのアソシエーション

  validates :nickname, presence: true, length: { maximum: 6 }
end