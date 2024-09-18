class AddIndexToCampaignsCode < ActiveRecord::Migration[7.1]
  def change
    add_index :campaigns, :code, unique: true
  end
end
