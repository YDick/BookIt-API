class CreateBookClubUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :book_club_users do |t|
      t.references :user
      t.references :book_club
      t.boolean :admin, null: false, default: false
      t.timestamps
    end
  end
end
