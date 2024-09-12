class CreateLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :line_items do |t|
      t.string :name
      t.references :campaign, null: false, foreign_key: true

      t.timestamps
    end
  end
end
