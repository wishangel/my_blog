# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Post.create(title:'記事２',body:"記事の中身うううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううう",category:'日常')
# Author.create(name:'Akihiko Yamagata',description:'rails 頑張ります！',image_url:'no image')

=begin
100.times do |num|
	Post.create(title:"記事#{num}", body:'hogepiyo' * num, category: 'programming')
end 
=end

u = Author.new(:email => "user@name.com", :password => 'password', :password_confirmation => 'password')
u.save

