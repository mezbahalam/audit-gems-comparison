require 'faker'
require 'time'

namespace :gf do
  desc "Update the data"
  task db_update: :environment do
    puts "Updating the data..."
    # PaperTrail.request.whodunnit = 'Seeder Script'


    start_time = Time.now
    # Update a few campaigns
    Campaign.limit(500).each do |campaign|
      campaign.update!(name: "Changed " + campaign.name)
    end

    # Update a few line_items
    LineItem.limit(500).each do |line_item|
      line_item.update!(name: "Changed " + line_item.name)
    end

    # Update a few audiences
    Audience.limit(500).each do |audience|
      audience.update!(name: "Changed " + audience.name)
    end

    end_time = Time.now
    elapsed_time = end_time - start_time

    puts "Seeding completed in #{Time.at(elapsed_time).utc.strftime("%H:%M:%S")}"
  end
end
