# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
include ActionDispatch::TestProcess # fixture_file_upload for FactoryGirl.create :product

puts 'Creating default user...'
user = User.first ||
  FactoryGirl.create(:user, email: 'f@f.f', password: '123456789')

N=3
puts "Creating #{N} products for #{user.email}..."
N.times do
  FactoryGirl.create :product, user: user
end