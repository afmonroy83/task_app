# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(name: :admin)
Role.create(name: :client)
user1 = User.create(name: 'Jhon',
                    lastname: 'Doe',
                    username: 'Doe12',
								    email: 'admin@gmail.com',
								    password: 'password1234',
								    password_confirmation: 'password1234')
user1.remove_role :client
user1.add_role(:admin)
user2 = User.create(name: 'Jane',
                    lastname: 'Doe',
                    username: 'Jane12',
								    email: 'client@gmail.com',
								    password: 'password1234',
								    password_confirmation: 'password1234')
1.upto(5) do |i|
	Task.create(description: "Tengo que hacer la tarea #{i}",
								 status: "incomplete",
								 user: user1)
end
1.upto(5) do |i|
	Task.create(description: "Tarea ##{i}",
								 status: "incomplete",
								 user: user2)
end
