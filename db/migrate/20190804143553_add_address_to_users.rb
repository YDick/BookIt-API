class AddAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :hstore
  end
end
