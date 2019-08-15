class User < ApplicationRecord
    has_many :book_clubs, as member
    has_many :book_clubs, as admin
end
