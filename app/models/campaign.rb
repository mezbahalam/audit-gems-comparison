
class Campaign < ApplicationRecord
  has_logidze ignore_log_data: true
  has_many :line_items, dependent: :destroy
end
