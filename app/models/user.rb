class User < ApplicationRecord
    validates :email, :presence => true, :uniqueness => true
    has_secure_password
    has_many :decklists
    has_many :cards
end
