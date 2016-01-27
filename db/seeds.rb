# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cat.create!(birth_date: "2015/01/20", name: "Robby", color: "red", sex: "M", description: "One time Robby ate my sock")
Cat.create!(birth_date: "2012/07/30", name: "Bob", color: "blue", sex: "M", description: "One time Bob bit my sister")
Cat.create!(birth_date: "2014/11/12", name: "Olivia", color: "orange", sex: "F", description: "One time Olivia fell into the toilet")
Cat.create!(birth_date: "2015/7/02", name: "Walter", color: "white", sex: "M", description: "One time Walter White made meth")
Cat.create!(birth_date: "2005/3/02", name: "Betsy", color: "black", sex: "F", description: "Betsy can't meow anymore")


CatRentalRequest.create!(cat_id: 1, start_date: "2015/01/20", end_date: "2015/02/20", status: "APPROVED")
CatRentalRequest.create!(cat_id: 1, start_date: "2015/02/10", end_date: "2015/02/20", status: "APPROVED")
CatRentalRequest.create!(cat_id: 3, start_date: "2015/10/20", end_date: "2015/11/20", status: "PENDING")
CatRentalRequest.create!(cat_id: 2, start_date: "2015/01/25", end_date: "2015/02/20", status: "DENIED")
