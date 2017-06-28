class ProductModule < ApplicationRecord
  belongs_to :customer
  belongs_to :po
  belongs_to :module_type
end
