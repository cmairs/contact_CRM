class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.boolean :is_active
      t.string :name

      t.timestamps
    end
  end
end
