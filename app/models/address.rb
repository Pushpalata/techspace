class Address < ActiveRecord::Base

  belongs_to :user
  belongs_to :country
  
  validates :city, :state, :country_id, :address_line1,  :presence => true
  
  before_save :set_geocode
  
  def set_geocode
    self.latitude, self.longitude = Geocoder.coordinates(self.full_address)
  end
  
  def full_address
    add = []
    add << self.address_line1
    add << self.city
    add << self.state
    add << self.country_name
    add.compact.join(", ")
  end
  
  def country_name
    self.country.name rescue ""
  end
  
end
