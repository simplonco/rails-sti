class CreateEnfants < ActiveRecord::Migration
  def change
    create_table :enfants do |t|
		t.string :name
      t.timestamps
    end
  end
end
