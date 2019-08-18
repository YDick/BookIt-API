class DropAddresses < ActiveRecord::Migration[5.2]
  def up
    drop_table :addresses
  end
  
end

