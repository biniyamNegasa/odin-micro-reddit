class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, presence: true, length: { minimum: 4 }, uniqueness: true
  validates :email, presence: true, format: { with: /^\S+@\S+\.\S+$/, multiline: true, message: "only allows valid e-mail addresses" }, uniqueness: true
end
