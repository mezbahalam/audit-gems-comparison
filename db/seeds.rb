require 'faker'
require 'time'

start_time = Time.now

10000.times do
  campaign = Campaign.create!(
    name: Faker::Marketing.buzzwords,
    user_pois: [],
    user_inventories: [],
    user_coordinates: [],
    inventory_geojson_url: Faker::Internet.url,
    urls_up_to_date: [true, false].sample,
    poi_geojson_url: Faker::Internet.url,
    gallery_code: Faker::Alphanumeric.alphanumeric(number: 10),
    status: rand(0..4),
    code: Faker::Alphanumeric.alphanumeric(number: 10),
    start_date: Faker::Date.backward(days: 30),
    end_date: Faker::Date.forward(days: 30),
    deleted_at: nil,
    measurement_requested: [true, false].sample
  )

  10.times do
    line_item = LineItem.create!(
      name: Faker::Commerce.product_name,
      campaign: campaign
    )

    Audience.create!(
      name: Faker::Marketing.buzzwords,
      line_item: line_item,
      programmatic_platform_id: [1, 2, 3],
      slot_dimension_id: [1, 2, 3],
      network_id: [1, 2, 3],
      integration_type_id: [1, 2, 3],
      ad_format_id: [1, 2, 3],
      aspect_ratio_id: [1, 2, 3],
      file_format_id: [1, 2, 3],
      restricted_iab_category_id: [1, 2, 3],
      names: [Faker::Name.name, Faker::Name.name],
      geography_ids: [1, 2, 3],
      geography_layer: Faker::Address.state,
      postal_code_category_ids: [1, 2, 3],
      county_category_ids: [1, 2, 3],
      dma_category_ids: [1, 2, 3],
      region_category_ids: [1, 2, 3],
      supports_cannabis: [true, false].sample,
      supports_audio: [true, false].sample,
      supports_video: [true, false].sample,
      supports_banner: [true, false].sample,
      status: ['active', 'inactive'],
      geometry_geojson: {},
      inventory_category_ids: [1, 2, 3],
      inventory_scoring_strategy: rand(0..2),
      query_inventory_ids: [1, 2, 3],
      exclude_preferred_ad_format_id: [true, false].sample,
      preferred_ad_format_id: [1, 2, 3],
      programmatic_platform_keys: [Faker::Alphanumeric.alphanumeric(number: 10)],
      supports_dynamic_creative: [true, false].sample
    )
  end
end


end_time = Time.now
elapsed_time = end_time - start_time

puts "Seeding completed in #{Time.at(elapsed_time).utc.strftime("%H:%M:%S")}"


