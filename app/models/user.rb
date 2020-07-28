class User < ApplicationRecord
  has_many :comments
  has_secure_password

  validates :first_name, length: { minimum: 3 }

  validates :email, uniqueness: true

  validates :password, length: { minimum: 8 }

  def owns_comment?(comment)
    self == comment.user
  end
    
end
