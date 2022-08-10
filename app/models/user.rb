class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true, length: { minimum: 2 }
  validates :password, length: { in: 6..20 }
  validates :email, length: { minimum: 8 }

end
