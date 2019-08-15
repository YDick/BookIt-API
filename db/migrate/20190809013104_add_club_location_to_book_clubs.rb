class AddClubLocationToBookClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :book_clubs, :club_location, :hstore
  end
end
