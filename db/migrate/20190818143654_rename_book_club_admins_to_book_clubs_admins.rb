class RenameBookClubAdminsToBookClubsAdmins < ActiveRecord::Migration[5.2]
  def change
    rename_table :book_club_admins, :book_clubs_admins
  end
end
