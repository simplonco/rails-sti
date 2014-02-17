class AddBankerIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :banker_id, :integer
  end
end
