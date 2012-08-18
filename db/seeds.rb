# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
#
#

#  Novo Coffee
#  3008 Larimer St 
#  Denver CO 80205
#  Latitude: 39.762459
#  Longitude: -104.980738
#  
#  Crema Coffee House
#  2862 Larimer St 
#  Denver CO 80205
#  Latitude: 39.761055
#  Longitude: -104.982477
#  
#  Mercury Cafe
#  2199 California St 
#  Denver CO 80205
#  Latitude: 39.750686
#  Longitude: -104.985136
#  
#  Meadowlark Bar
#  2701 Larimer St 
#  Denver CO 80205
#  Latitude: 39.759586 
#  Longitude: -104.984436
#
#  Flying Dog Brewery
#  2330 Broadway 
#  Denver CO 80205
#  Latitude: 39.750972
#  Longitude: -104.987671 
#
#

Beacon.destroy_all
User.destroy_all

Beacon.create!(
  [
    { user: User.create!({ email: 'dlogan21@gmail.com', first_name: 'Dan', last_name: 'Logan'}),
      lat: '39.762459',
      long: '-104.980738',
      description: 'Coding some GO @ Novo Cofee',
      duration: 2
    },
    { user: User.create!({ email: 'cory@lanou.com', first_name: 'Cory', last_name: 'LaNou'}),
      lat: '39.750972',
      long: '-104.987671',
      description: 'Hacking up some ruby code with facebook apis @ Flying Dog Brewery',
      duration: 2
    }
  ]
)
