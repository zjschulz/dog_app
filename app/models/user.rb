class User < ApplicationRecord
    has_many :volunteers
    validates_presence_of :username, :password, :password_confirmation
    validates_uniqueness_of :username
    has_secure_password
end
