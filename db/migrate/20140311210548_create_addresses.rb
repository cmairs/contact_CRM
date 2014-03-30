class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :line3
      t.string :town
      t.string :country
      t.string :postcode
      t.string :address_type

      t.timestamps
    end
  end
end
