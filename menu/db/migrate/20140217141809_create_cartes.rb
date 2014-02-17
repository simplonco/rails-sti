class CreateCartes < ActiveRecord::Migration
  def change
    create_table :cartes do |t|
      t.string :entree
      t.string :plat
      t.string :dessert
      t.references :taste, polymorphic: true

      t.timestamps
    end
  end
end
