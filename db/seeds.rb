# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  full_name: 'John Doe',
  phone: '1234567899',
  password: 'password1')

User.create!(
  full_name: 'Jane Doe',
  phone: '987654321',
  password: 'password2')  

p "Patients are successfully created!"

AdminUser.create!(
  full_name: 'Assad',
  phone: '000000000',
  password: 'password')

p "Admin is successfully created!"
