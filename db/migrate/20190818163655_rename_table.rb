class RenameTable < ActiveRecord::Migration[5.2]
  def change

    def self.up
      rename_table :admins_book_clubs, book_clubs_admins
    end
  
   
  end
end
