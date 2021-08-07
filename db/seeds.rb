puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 32).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 12).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 15).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 8).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)

puts "Seeding students..."

cohorts = Cohort.all

10.times do 
  Student.create(
    name: Faker::Name.first_name,
    age: rand(18..40),
    email: "#{Faker::Name.first_name}#{rand(1..10)}@gmail.com"
  )
end

puts "Seeding Complete"

# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data

puts "Done!"