
#write a rake task to insert or update a record in the database for campaign
namespace :campaign do
  desc "Insert or update a record in the database for campaign"
  task insert: :environment do
    Campaign.insert_all([
                          {
                            name: 'Campaign 1',
                            user_pois: [],
                            user_inventories: [],
                            user_coordinates: [],
                            inventory_geojson_url: 'http://example.com',
                            urls_up_to_date: true,
                            poi_geojson_url: 'http://example.com',
                            gallery_code: 'ABC123',
                            status: 1,
                            code: 'XYZ789',
                            start_date: Date.today,
                            end_date: Date.today + 30,
                            deleted_at: nil,
                            measurement_requested: false
                          },
                          {
                            name: 'Campaign 2',
                            user_pois: [],
                            user_inventories: [],
                            user_coordinates: [],
                            inventory_geojson_url: 'http://example.com',
                            urls_up_to_date: true,
                            poi_geojson_url: 'http://example.com',
                            gallery_code: 'DEF456',
                            status: 2,
                            code: 'LMN123',
                            start_date: Date.today,
                            end_date: Date.today + 30,
                            deleted_at: nil,
                            measurement_requested: true
                          }
                        ])
  end


  task upsert: :environment do
    Campaign.upsert_all([
                          {
                            name: 'paper Upserted Campaign 1',
                            user_pois: [],
                            user_inventories: [],
                            user_coordinates: [],
                            inventory_geojson_url: 'http://example.com',
                            urls_up_to_date: true,
                            poi_geojson_url: 'http://example.com',
                            gallery_code: 'GHI789',
                            status: 3,
                            code: 'XYZ789',
                            start_date: Date.today,
                            end_date: Date.today + 30,
                            deleted_at: nil,
                            measurement_requested: false
                          },
                          {
                            name: 'paper Upserted Campaign 2',
                            user_pois: [],
                            user_inventories: [],
                            user_coordinates: [],
                            inventory_geojson_url: 'http://example.com',
                            urls_up_to_date: true,
                            poi_geojson_url: 'http://example.com',
                            gallery_code: 'JKL012',
                            status: 4,
                            code: 'LMN123',
                            start_date: Date.today,
                            end_date: Date.today + 30,
                            deleted_at: nil,
                            measurement_requested: true
                          }
                        ], unique_by: :code)

  end
end


