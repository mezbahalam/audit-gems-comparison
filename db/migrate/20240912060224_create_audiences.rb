class CreateAudiences < ActiveRecord::Migration[7.1]
  def change
    create_table :audiences do |t|
      t.string :name
      t.text :description
      t.references :line_item, null: false, foreign_key: true
      t.integer :programmatic_platform_id, array: true, default: []
      t.integer :slot_dimension_id, array: true, default: []
      t.integer :network_id, array: true, default: []
      t.integer :integration_type_id, array: true, default: []
      t.integer :ad_format_id, array: true, default: []
      t.integer :aspect_ratio_id, array: true, default: []
      t.integer :file_format_id, array: true, default: []
      t.integer :restricted_iab_category_id, array: true, default: []
      t.string :names, array: true, default: []
      t.bigint :geography_ids, array: true, default: []
      t.string :geography_layer
      t.bigint :postal_code_category_ids, array: true, default: []
      t.bigint :county_category_ids, array: true, default: []
      t.bigint :dma_category_ids, array: true, default: []
      t.bigint :region_category_ids, array: true, default: []
      t.boolean :supports_cannabis
      t.boolean :supports_audio
      t.boolean :supports_video
      t.boolean :supports_banner
      t.string :status, array: true, default: []
      t.jsonb :geometry_geojson, default: {}
      t.bigint :user_id
      t.bigint :organization_id
      t.integer :inventory_category_ids, array: true, default: []
      t.integer :inventory_scoring_strategy
      t.integer :query_inventory_ids, array: true, default: []
      t.boolean :exclude_preferred_ad_format_id
      t.integer :preferred_ad_format_id, array: true, default: []
      t.string :programmatic_platform_keys, array: true, default: []
      t.boolean :supports_dynamic_creative

      t.timestamps
    end
  end
end
