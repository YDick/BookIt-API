class BookClubUser < ApplicationRecord
    belongs_to :book_club
    belongs_to :user

    scope :admin, -> {
        where {admin: true}
    }
end
