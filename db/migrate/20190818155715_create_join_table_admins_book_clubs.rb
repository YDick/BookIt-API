class CreateJoinTableAdminsBookClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :admins_book_clubs do |t|
      t.references :admins, foreign_key: {to_table: :users}
      t.references :book_club, foreign_key: true
    end
  end
end
