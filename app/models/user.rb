class User < ApplicationRecord
  
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, format: {with: /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/}
  validates :password, length: { in: 8..32 }, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i}
  
  
  
  has_secure_password
  
  has_many :topics
end
