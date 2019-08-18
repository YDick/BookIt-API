class DropAddresses < ActiveRecord::Migration[5.2]
  def up
    drop_table :addresses
  end

  def down
    create_table :addresses do |t|
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :province
      t.string :postal_code

      t.timestamps        
    end

  end