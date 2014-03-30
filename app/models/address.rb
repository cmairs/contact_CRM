class Address < ActiveRecord::Base
  attr_accessible :address_type, :country, :line1, :line2, :line3, :postcode, :town
end
