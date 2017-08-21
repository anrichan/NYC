class Favorite < ApplicationRecord
  belongs_to :article
  belongs_to :user
  # お気に入りは同じ人が同じ投稿をを複数いいねする事ができません。
  # presenceは空の値を入れないようにする
  # uniquenessは同じものを保存しないようにする
  validates :user, presence: true
  validates :user_id, uniqueness: { scope: :article_id }
  validates :article, presence: true
  
end
