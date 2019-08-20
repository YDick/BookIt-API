class DropBookClubAdmins < ActiveRecord::Migration[5.2]
  def change
    drop_table :book_clubs_admins
  end
end
