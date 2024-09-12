
class LineItem < ApplicationRecord
  belongs_to :campaign
  has_one :audience, dependent: :destroy
end
