
class Campaign < ApplicationRecord
  has_logidze
  has_many :line_items, dependent: :destroy
end
