class RenameBookClubsAdminsToAdminsBookClubs < ActiveRecord::Migration[5.2]
  def self.up
    rename_table :book_clubs_admins, :admins_book_clubs
  end

  def self.down
    rename_table :admins_book_clubs, :book_clubs_admins
  end
end
