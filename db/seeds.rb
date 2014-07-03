# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s = Sector.create!(name: "Haardt1")
["Mondblock", "Energiezentrum"].each do |block|
	b = s.blocks.create!(name: block)
	["Rolando", "Der Fixator", "Dio", "Leistenterror", "Anorexie"].each do |boulder|
		b.boulders.create!(name: boulder)
	end
end

s = Sector.create!(name: "Haardt2")
["Mondblock", "Energiezentrum"].each do |block|
	b = s.blocks.create!(name: block)
	["Kritikaster", "Sitting Bull", "Keep the Faith"].each do |boulder|
		b.boulders.create!(name: boulder)
	end
end

s = Sector.create!(name: "Wolfsburg")
["Erdloch"].each do |block|
	b = s.blocks.create!(name: block)
	["Kieselkante", "Hades", "Power of now", "Farore"].each do |boulder|
		b.boulders.create!(name: boulder)
	end
end