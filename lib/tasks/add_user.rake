task :add_user => :environment do

  puts "Enter Email"
  email = STDIN.gets.strip
  puts "Enter Name"
  name = STDIN.gets.strip
  puts "Enter Password"
  password = STDIN.gets.strip
  User.create!(:email => email, :password => password, :name => name)

end