class RemoveLocationFromBookClubs < ActiveRecord::Migration[5.2]
  def change
    remove_column :book_clubs, :location, :string
  end
end
