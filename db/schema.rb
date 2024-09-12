# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_09_12_060224) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audiences", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "line_item_id", null: false
    t.integer "programmatic_platform_id", default: [], array: true
    t.integer "slot_dimension_id", default: [], array: true
    t.integer "network_id", default: [], array: true
    t.integer "integration_type_id", default: [], array: true
    t.integer "ad_format_id", default: [], array: true
    t.integer "aspect_ratio_id", default: [], array: true
    t.integer "file_format_id", default: [], array: true
    t.integer "restricted_iab_category_id", default: [], array: true
    t.string "names", default: [], array: true
    t.bigint "geography_ids", default: [], array: true
    t.string "geography_layer"
    t.bigint "postal_code_category_ids", default: [], array: true
    t.bigint "county_category_ids", default: [], array: true
    t.bigint "dma_category_ids", default: [], array: true
    t.bigint "region_category_ids", default: [], array: true
    t.boolean "supports_cannabis"
    t.boolean "supports_audio"
    t.boolean "supports_video"
    t.boolean "supports_banner"
    t.string "status", default: [], array: true
    t.jsonb "geometry_geojson", default: {}
    t.bigint "user_id"
    t.bigint "organization_id"
    t.integer "inventory_category_ids", default: [], array: true
    t.integer "inventory_scoring_strategy"
    t.integer "query_inventory_ids", default: [], array: true
    t.boolean "exclude_preferred_ad_format_id"
    t.integer "preferred_ad_format_id", default: [], array: true
    t.string "programmatic_platform_keys", default: [], array: true
    t.boolean "supports_dynamic_creative"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_item_id"], name: "index_audiences_on_line_item_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.jsonb "user_pois"
    t.jsonb "user_inventories"
    t.jsonb "user_coordinates"
    t.string "inventory_geojson_url"
    t.boolean "urls_up_to_date"
    t.string "poi_geojson_url"
    t.string "gallery_code"
    t.integer "status"
    t.string "code"
    t.date "start_date"
    t.date "end_date"
    t.datetime "deleted_at"
    t.boolean "measurement_requested"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.string "name"
    t.bigint "campaign_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_line_items_on_campaign_id"
  end

  add_foreign_key "audiences", "line_items"
  add_foreign_key "line_items", "campaigns"
end
