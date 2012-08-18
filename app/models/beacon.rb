class Beacon < ActiveRecord::Base
  attr_accessible :user, :lat, :long, :description, :duration

  belongs_to :user
end
