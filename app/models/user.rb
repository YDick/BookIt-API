class User < ApplicationRecord
    has_and_belongs_to_many :book_clubs
    has_many :admins
end
