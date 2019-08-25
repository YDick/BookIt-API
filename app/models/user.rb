class User < ApplicationRecord
    has_secure_password

    has_many :book_club_users
    has_many :book_clubs, through: :book_club_users
    

    
    before_validation {
        (self.email = self.email.to_s.downcase)
    }
    validates_presence_of :email
    validates_uniqueness_of :email

    validates :password_digest, presence: true


end


