class User < ApplicationRecord
    has_many :microposts
    validates :email, :name, presence: true
end
