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
  # ほし
  has_many :reviews, dependent: :destroy
  # フォローできるユーザーを取り出すに記述する。（user.following_relationships.followingsをできるようにする）
  has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
  # フォローしているユーザーを取り出す （user.followingsをできるようにする）
  has_many :followings, through: :following_relationships
  # user.rbにフォローする関数、フォローしているか調べるための関数、フォローを外す関数を作成する
  has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
  # フォローされているユーザーを取り出す（user.follwersをできるようにする）
  has_many :followers, through: :follower_relationships

  def following?(other_user)
    following_relationships.find_by(following_id: other_user.id)
  end

  def follow!(other_user)
    following_relationships.create!(following_id: other_user.id)
  end

  def unfollow!(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end

end
