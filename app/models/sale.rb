class Sale < ActiveRecord::Base
  has_one :product
  belongs_to :employee
  belongs_to :customer
  belongs_to :product
end
