class CreateBankers < ActiveRecord::Migration
  def change
    create_table :bankers do |t|
    	t.string :lastname
    	t.string :firstname

      t.timestamps
    end
  end
end
