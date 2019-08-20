class BookClubsAdmins < ActiveRecord::Migration[5.2]
  def self.up
    create_table :book_clubs_admins, :id => false do |t|
    t.references :admin
    end
 
    end
    
    def self.down
    drop_table :book_clubs_admins
    end
    
end
