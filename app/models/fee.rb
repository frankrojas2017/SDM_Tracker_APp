class Fee < ApplicationRecord
  belongs_to :quote
  belongs_to :fee_type
end
