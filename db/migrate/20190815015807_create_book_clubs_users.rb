class CreateBookClubsAdmins < ActiveRecord::Migration[5.2]
  def self.up
    create_table :book_clubs_admins, :id => false do |t|
      t.references :admin
  end
  add_index :book_clubs_admins, :admin_id
    end

    def self.down
      drop_table :book_clubs_admins
    end
  end
end
