class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4 }, uniqueness: true
  validates :email, presence: true, format: { with: /^\S+@\S+\.\S+$/, multiline: true, message: "only allows valid e-mail addresses" }, uniqueness: true
end
