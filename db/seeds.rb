# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
websites = [
  'http://extratorrent.com', 
  'http://kickass.to/',
  'https://www.torrentz.eu/',
  'https://thepiratebay.se/',
  'http://yts.to/',
  'https://eztv.it/',
  'https://isohunt.to/',
  'http://1337x.to/'
]

websites.each do |website|
  Website.create(domain: website)
end