class DropAddresses < ActiveRecord::Migration[5.2]
  def change
    drop_table :addresses
  end
  
end

