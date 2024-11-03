class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :sentence, presence: true
end
