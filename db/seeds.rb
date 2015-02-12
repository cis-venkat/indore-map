# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.where(name: 'South Tukoganj', color: '#FF7F50').first_or_create
Location.where(name: 'Sudama Nagar', color: '#008B8B').first_or_create
Location.where(name: 'Airport', color: '#8FBC8F').first_or_create
Location.where(name: 'Mahalaxmi Nagar', color: '#2F4F4F').first_or_create
Location.where(name: 'Vijay Nagar', color: '#4B0082').first_or_create

Boundary.create(longitude: 75.874543, latitude: 22.714717, location_id: Location.find_by_name("South Tukoganj").id)
Boundary.create(longitude: 75.871239, latitude: 22.719982, location_id: Location.find_by_name("South Tukoganj").id)
Boundary.create(longitude: 75.885959, latitude: 22.723545, location_id: Location.find_by_name("South Tukoganj").id)
Boundary.create(longitude: 75.884070, latitude: 22.718438, location_id: Location.find_by_name("South Tukoganj").id)
Boundary.create(longitude: 75.874543, latitude: 22.714717, location_id: Location.find_by_name("South Tukoganj").id)
Boundary.create(longitude: 75.829353, latitude: 22.683875, location_id: Location.find_by_name("Sudama Nagar").id)
Boundary.create(longitude: 75.828238, latitude: 22.693932, location_id: Location.find_by_name("Sudama Nagar").id)
Boundary.create(longitude: 75.843344, latitude: 22.705097, location_id: Location.find_by_name("Sudama Nagar").id)
Boundary.create(longitude: 75.835705, latitude: 22.683955, location_id: Location.find_by_name("Sudama Nagar").id)
Boundary.create(longitude: 75.829353, latitude: 22.683875, location_id: Location.find_by_name("Sudama Nagar").id)
Boundary.create(longitude: 75.777941, latitude: 22.713807, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.795965, latitude: 22.721486, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.795364, latitude: 22.722753, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.801115, latitude: 22.724890, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.800428, latitude: 22.727740, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.807037, latitude: 22.728928, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.814247, latitude: 22.726870, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.812273, latitude: 22.722911, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.815620, latitude: 22.715152, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.810471, latitude: 22.712777, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.807295, latitude: 22.718794, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.805149, latitude: 22.719744, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.798025, latitude: 22.717449, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.797424, latitude: 22.718082, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.779400, latitude: 22.710481, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.777769, latitude: 22.713886, location_id: Location.find_by_name("Airport").id)
Boundary.create(longitude: 75.880980, latitude: 22.762688, location_id: Location.find_by_name("Mahalaxmi Nagar").id)
Boundary.create(longitude: 75.887289, latitude: 22.769573, location_id: Location.find_by_name("Mahalaxmi Nagar").id)
Boundary.create(longitude: 75.892181, latitude: 22.774559, location_id: Location.find_by_name("Mahalaxmi Nagar").id)
Boundary.create(longitude: 75.893083, latitude: 22.774638, location_id: Location.find_by_name("Mahalaxmi Nagar").id)
Boundary.create(longitude: 75.901408, latitude: 22.771473, location_id: Location.find_by_name("Mahalaxmi Nagar").id)
Boundary.create(longitude: 75.897632, latitude: 22.759403, location_id: Location.find_by_name("Mahalaxmi Nagar").id)
Boundary.create(longitude: 75.880980, latitude: 22.762688, location_id: Location.find_by_name("Mahalaxmi Nagar").id)
Boundary.create(longitude: 75.903425, latitude: 22.749589, location_id: Location.find_by_name("Vijay Nagar").id)
Boundary.create(longitude: 75.908918, latitude: 22.770246, location_id: Location.find_by_name("Vijay Nagar").id)
Boundary.create(longitude: 75.921879, latitude: 22.763361, location_id: Location.find_by_name("Vijay Nagar").id)
Boundary.create(longitude: 75.922136, latitude: 22.746422, location_id: Location.find_by_name("Vijay Nagar").id)
Boundary.create(longitude: 75.903425, latitude: 22.749589, location_id: Location.find_by_name("Vijay Nagar").id)
