class BookClub < ApplicationRecord
    has_and_belongs_to_many :users
    has_and_belongs_to_many :admins, class_name: "User", join_table: "book_clubs_admins", foreign_key: "book_club_id", association_foreign_key: "admin_id"
end
