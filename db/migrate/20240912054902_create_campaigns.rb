class CreateCampaigns < ActiveRecord::Migration[7.1]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.jsonb :user_pois
      t.jsonb :user_inventories
      t.jsonb :user_coordinates
      t.string :inventory_geojson_url
      t.boolean :urls_up_to_date
      t.string :poi_geojson_url
      t.string :gallery_code
      t.integer :status
      t.string :code
      t.date :start_date
      t.date :end_date
      t.datetime :deleted_at
      t.boolean :measurement_requested

      t.timestamps
    end
  end
end
