class Audience < ApplicationRecord
  belongs_to :line_item

  has_paper_trail
end
