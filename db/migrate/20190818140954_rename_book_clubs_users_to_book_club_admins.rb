class RenameBookClubsUsersToBookClubAdmins < ActiveRecord::Migration[5.2]
  def change
    rename_table :book_clubs_users, :book_club_admins
  end
end
