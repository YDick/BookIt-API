class AddImageToBookClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :book_clubs, :image_url, :string
  end
end
