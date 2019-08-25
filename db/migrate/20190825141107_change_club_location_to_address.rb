class ChangeClubLocationToAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :book_clubs, :club_location, :address
  end
end
