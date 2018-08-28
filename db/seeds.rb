# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



100.times do
  i = rand(0..3)
  edu = ["HS", "College", "Masters", "PHD"]
  Student.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    age: rand(16..85),
    education: edu[i],
    grade: rand(0.90..4.00).ceil(2),
    cohort_id: 0,
    course_id: rand(1..10)
  )
end
