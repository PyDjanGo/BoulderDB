# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Grade.destroy_all
Sector.destroy_all
Block.destroy_all
Boulder.destroy_all

["2a", "2b", "2c", "3a", "3b", "3c", "4a", "4b", "4c", "5a", "5b", "5c", "5c+", "6a", "6a+", "6b", "6b+", "6c", "6c+", "7a", "7b", "7b+", "7c", "7c+", "8a", "8a+", "8b", "8b+", "8c", "8c+"].each_with_index do |grade, index|
	Grade.create!({name: grade, rank: index})
end

# Sektoren:
["Haardt1", "Haardt2", "Wolfsburg"].each do |sector|
	Sector.create!(name: sector)
end

# Blöcke
["Mondblock", "Energiezentrum", "Erdloch", "Terrorblock", "Mormonblock"].each do |block|
	Block.create!(name: block, sector_id: Sector.ids.sample)
end

# Boulder
["Rolando", "Der Fixator", "Dio", "Leistenterror", "Anorexie", "Kritikaster", "Sitting Bull", "Keep the Faith","Kieselkante", "Hades", "Power of now", "Farore"].each do |boulder|
	b = Boulder.create!(name: boulder)
	b.block = Block.find_by_id(Block.ids.sample)
	b.grade = Grade.find_by_id(Grade.ids.sample)
	b.save!
end
