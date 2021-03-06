class Article < ApplicationRecord
   paginates_per 4 # 1ページあたり4項目表示
  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :image, styles: { medium: "300x300>", square: "250x250>", thumb: "100x100>"}
  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  # user関連付け
  belongs_to :user
  acts_as_ordered_taggable_on :interests
  # 地図機能
  geocoded_by :address
  after_validation :geocode
  # コメント機能関連付け
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  # お気に入り機能
  has_many :favorites, dependent: :destroy
  # いいねしているかどうか？によって表示するボタンを変えたいので、true, falseを返すメソッドをモデルに実装します。
  def favorited_by? user
    favorites.where(user_id: user.id).exists?
   end
  # 星
  has_many :reviews, dependent: :destroy
  # 星の平均を出す
  def average_rate
    average = self.users.pluck(:rate).sum / self.users.count
  end
  # admin
  belongs_to :admin

end
