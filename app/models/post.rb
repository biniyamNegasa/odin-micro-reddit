class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }, uniqueness: true
  validates :body, presence: true
end
