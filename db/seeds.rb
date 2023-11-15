# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
rivo = { name: 'RIVO', address: 'May-Ayim-Ufer 9, 10997 Berlin', category: 'Belgian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'Italian' }
chez_emil = { name: 'Chez Emil', address: 'Bochumer Str. 17, 10555 Berlin', category: 'French' }
ishin = { name: 'Ishin', address: 'Mittelstrasse 24, 10117 Berlin', category: 'Japanese' }
vinpearl = { name: 'Vinpearl', address: 'Raumerstrasse 14A, 10437 Berlin', category: 'Chinese' }

[rivo, pizza_east, chez_emil, ishin, vinpearl].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
