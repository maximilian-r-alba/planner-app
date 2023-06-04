class User < ApplicationRecord
    validates_presence_of :username, :name
    has_secure_password
    has_many :lists
    has_many :tasks, through: :lists
end
