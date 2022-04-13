class User < ApplicationRecord
    validates :email, :presence => true, :uniqueness => true
    has_secure_password
    has_many :decklists
    has_many :posts
    # has_many :own_cards, :foreign_key => "user_id", :class_name => "Card"
    has_many :cards, :through => :decklists
end
