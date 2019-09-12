class BookClub < ApplicationRecord
    has_many :book_club_users
    has_many :users, through: :book_club_users
    has_many :admins, -> { where book_club_users: { admin: true } },through: :book_club_users, source: :user

    before_validation {
        if self.image_url == nil
            (self.image_url = "https://images.unsplash.com/photo-1476275466078-4007374efbbe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1314&q=80")
        end
    }
end
