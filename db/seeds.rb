# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

[
{:title => "Rails Developer", :description => "Managing", :deadline => "2012-2-2", :category_id => 1},
{:title => "CSS Designer", :description => "Programming", :deadline => "2012-2-2", :category_id => 1},
{:title => "Android Developer", :description => "Developing", :deadline => "2012-2-2", :category_id => 2},
{:title => "Office Clerk", :description => "Clerking", :deadline => "2012-2-2", :category_id => 3}
].each do |attrs|
  job = Job.find_or_create_by_title(attrs)
end

[
  {:name => "Web Development"},
  {:name => "Mobile Development"},
  {:name => "General Office"},
].each do |attrs|
  category = Category.find_or_create_by_name(attrs)
end
