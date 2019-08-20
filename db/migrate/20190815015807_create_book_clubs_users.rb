class CreateBookClubsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :book_clubs_users do |t|
        t.timestamps
    end
end
