class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  has_many :beacons

  def full_contact_data
    FullContact.raw_json(email)
  end
end
