class Feed < ActiveRecord::Base

  serialize :description
  belongs_to :user
  
  validates :message, :presence => true
end
