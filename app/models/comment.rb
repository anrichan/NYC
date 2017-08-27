class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  paginates_per 5
end
