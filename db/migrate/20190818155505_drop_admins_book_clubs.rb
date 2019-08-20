class DropAdminsBookClubs < ActiveRecord::Migration[5.2]
  def change
    drop_table :admins_book_clubs
  end
end
