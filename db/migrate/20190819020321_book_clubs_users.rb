class BookClubsUsers < ActiveRecord::Migration[5.2]
  def change
      create_table :book_clubs_users, :id => false do |t|
        t.integer :book_club_id
        t.integer :user_id
      end
  end
end
