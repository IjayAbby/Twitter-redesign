# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
arr =["mary","bob","mikle","john"]
4.times do |variable|
    User.create(
        email:"#{arr[variable]}@mail",
       username: "#{arr[variable]}",
       name:"#{arr[variable]}",
       password:"password"
        )
end
20.times do  |var|
 Tweeet.create(tweeet:"Loaeadmalmaefnejfjfsfeskfj",user:User.find(1))


end

puts "****"*100