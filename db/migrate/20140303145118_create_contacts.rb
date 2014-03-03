class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :surname
      t.string :email
      t.integer :phonenumber

      t.timestamps
    end
  end
end
