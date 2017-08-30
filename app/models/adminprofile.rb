class Adminprofile < ApplicationRecord
  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :myphoto, styles: { medium: "300x300>", thumb: "100x100>" }

  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :myphoto, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  belongs_to :admin
end
