class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  has_many :articles
  has_many :comments, dependent: :destroy
  has_many :article, through: :comments
  # お気に入り機能
  has_many :favorites, dependent: :destroy
end
