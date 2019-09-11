class BookClub < ApplicationRecord
    has_many :book_club_users
    has_many :users, through: :book_club_users
    has_many :admins, -> { where book_club_users: { admin: true } },through: :book_club_users, source: :user

    before_validation {
        if self.image_url == nil
            (self.image_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgqUt6IVQkHaVY-0eYkX57FZ4PzIqG8qKQ0xZtrIyK7K0kiG5U")
        end
    }
end
