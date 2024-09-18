
class Campaign < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_paper_trail
end
