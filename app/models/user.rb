class User < ApplicationRecord
    # has_secure_password
    # validates :email, :uniqueness => true, :presence => true
    has_many :likes
    has_many :works

end
