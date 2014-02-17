class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :lastname
      t.integer :account_number
      t.string :situation

      t.timestamps
    end
  end
end
