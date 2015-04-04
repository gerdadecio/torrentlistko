# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ANIMES
animes = [
  'http://extratorrent.cc/rss.xml?cid=1&type=last', 
  'http://extratorrent.cc/rss.xml?cid=963&type=last',
  'http://extratorrent.cc/rss.xml?cid=951&type=last',
  'http://extratorrent.cc/rss.xml?cid=959&type=last',
  'http://extratorrent.cc/rss.xml?cid=99&type=last',
  'http://extratorrent.cc/rss.xml?cid=86&type=last',
  'http://extratorrent.cc/rss.xml?cid=87&type=last',
  'http://extratorrent.cc/rss.xml?cid=960&type=last',
  'http://extratorrent.cc/rss.xml?cid=267&type=last',
  'http://extratorrent.cc/rss.xml?cid=88&type=last',
  'http://extratorrent.cc/rss.xml?cid=89&type=last',
  'http://extratorrent.cc/rss.xml?cid=142&type=last',
  'http://extratorrent.cc/rss.xml?cid=962&type=last',
  'http://extratorrent.cc/rss.xml?cid=151&type=last',
  'http://extratorrent.cc/rss.xml?cid=90&type=last',
  'http://extratorrent.cc/rss.xml?cid=91&type=last',
  'http://extratorrent.cc/rss.xml?cid=156&type=last',
  'http://extratorrent.cc/rss.xml?cid=950&type=last',
  'http://extratorrent.cc/rss.xml?cid=92&type=last',
  'http://extratorrent.cc/rss.xml?cid=93&type=last',
  'http://extratorrent.cc/rss.xml?cid=95&type=last',
  'http://extratorrent.cc/rss.xml?cid=94&type=last',
  'http://extratorrent.cc/rss.xml?cid=620&type=last',
  'http://extratorrent.cc/rss.xml?cid=145&type=last',
  'http://extratorrent.cc/rss.xml?cid=949&type=last',
  'http://extratorrent.cc/rss.xml?cid=96&type=last',
  'http://extratorrent.cc/rss.xml?cid=524&type=last',
  'http://extratorrent.cc/rss.xml?cid=97&type=last',
  'http://extratorrent.cc/rss.xml?cid=961&type=last',
  'http://extratorrent.cc/rss.xml?cid=98&type=last',
  'http://extratorrent.cc/rss.xml?cid=964&type=last',
  'http://extratorrent.cc/rss.xml?cid=952&type=last',
  'http://extratorrent.cc/rss.xml?cid=101&type=last',
  'http://extratorrent.cc/rss.xml?cid=508&type=last',
  'http://extratorrent.cc/rss.xml?cid=100&type=last',
  'http://extratorrent.cc/rss.xml?cid=523&type=last',
  'http://extratorrent.cc/rss.xml?cid=102&type=last',
  'http://extratorrent.cc/rss.xml?cid=146&type=last',
  'http://extratorrent.cc/rss.xml?cid=103&type=last',
  'http://extratorrent.cc/rss.xml?cid=104&type=last',
  'http://extratorrent.cc/rss.xml?cid=105&type=last',
  'http://extratorrent.cc/rss.xml?cid=107&type=last',
  'http://extratorrent.cc/rss.xml?cid=106&type=last',
  'http://extratorrent.cc/rss.xml?cid=525&type=last',
  'http://extratorrent.cc/rss.xml?cid=953&type=last',
  'http://extratorrent.cc/rss.xml?cid=958&type=last'
]

animes.each do |feed|
  Feed.find_or_create_by(url: feed)
end

#MOVIES
movies = [
  'http://extratorrent.cc/rss.xml?cid=419&type=last',
  'http://extratorrent.cc/rss.xml?cid=28&type=last',
  'http://extratorrent.cc/rss.xml?cid=29&type=last',
  'http://extratorrent.cc/rss.xml?cid=30&type=last',
  'http://extratorrent.cc/rss.xml?cid=32&type=last',
  'http://extratorrent.cc/rss.xml?cid=628&type=last',
  'http://extratorrent.cc/rss.xml?cid=558&type=last',
  'http://extratorrent.cc/rss.xml?cid=33&type=last',
  'http://extratorrent.cc/rss.xml?cid=34&type=last',
  'http://extratorrent.cc/rss.xml?cid=600&type=last',
  'http://extratorrent.cc/rss.xml?cid=35&type=last',
  'http://extratorrent.cc/rss.xml?cid=37&type=last',
  'http://extratorrent.cc/rss.xml?cid=742&type=last',
  'http://extratorrent.cc/rss.xml?cid=36&type=last',
  'http://extratorrent.cc/rss.xml?cid=38&type=last',
  'http://extratorrent.cc/rss.xml?cid=39&type=last',
  'http://extratorrent.cc/rss.xml?cid=602&type=last',
  'http://extratorrent.cc/rss.xml?cid=40&type=last',
  'http://extratorrent.cc/rss.xml?cid=41&type=last',
  'http://extratorrent.cc/rss.xml?cid=150&type=last',
  'http://extratorrent.cc/rss.xml?cid=42&type=last',
  'http://extratorrent.cc/rss.xml?cid=44&type=last',
  'http://extratorrent.cc/rss.xml?cid=805&type=last',
  'http://extratorrent.cc/rss.xml?cid=947&type=last',
  'http://extratorrent.cc/rss.xml?cid=603&type=last',
  'http://extratorrent.cc/rss.xml?cid=45&type=last',
  'http://extratorrent.cc/rss.xml?cid=46&type=last',
  'http://extratorrent.cc/rss.xml?cid=47&type=last',
  'http://extratorrent.cc/rss.xml?cid=48&type=last',
  'http://extratorrent.cc/rss.xml?cid=779&type=last',
  'http://extratorrent.cc/rss.xml?cid=49&type=last',
  'http://extratorrent.cc/rss.xml?cid=671&type=last',
  'http://extratorrent.cc/rss.xml?cid=307&type=last',
  'http://extratorrent.cc/rss.xml?cid=601&type=last'
]

movies.each do |feed|
  Feed.find_or_create_by(url: feed)
end