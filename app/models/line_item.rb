
class LineItem < ApplicationRecord
  belongs_to :campaign
  has_one :audience, dependent: :destroy
  has_paper_trail

end
