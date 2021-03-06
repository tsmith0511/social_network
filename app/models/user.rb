class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  has_one :profile
  
  field :username, type: String
  field :email, type: String
  field :password_digest, type: String
  field :friends, type: Array

  validates :email, presence: true, uniqueness: true

  has_secure_password
end
