class User < ApplicationRecord
  has_many :comments
  has_secure_password

  validates :username,
            presence: true,
            length: { minimum: 3 },
            uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 8 }
  
  def owns_comment?(comment)
    self == comment.user
  end
    
end
