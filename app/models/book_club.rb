class BookClub < ApplicationRecord
    has_many :users, through: :book_club_users
    has_many :admins, -> { where book_club_users: { admin: true } },through: :book_club_users, source: :user
end
