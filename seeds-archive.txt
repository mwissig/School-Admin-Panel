# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  i = rand(0..3)
  edu = ["HS", "College", "Masters", "PHD"]
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    age: rand(16..85),
    education: edu[i],
    salary: rand(36..120)*1000,
    admin_priv: rand(0..1),
    password: "password"
  )
end

100.times do
  i = rand(0..3)
  edu = ["HS", "College", "Masters", "PHD"]
  Student.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    age: rand(16..85),
    education: edu[i],
    grade: rand(0.90..4.00).round(2),
    cohort_id: 0,
    course_id: rand(1..10)
  )
end

Course.create(
  name: "Industrial Design",
  hours: 220
)
Course.create(
  name: "Textile Design",
  hours: 180
)
Course.create(
  name: "Environmental Policy",
  hours: 150
)
Course.create(
  name: "Computational Statistics",
  hours: 280
)
Course.create(
  name: "Electrical Engineering",
  hours: 280
)
Course.create(
  name: "Geometry And Topology",
  hours: 200
)
Course.create(
  name: "Ornithology",
  hours: 190
)
Course.create(
  name: "Clinical Microbiology",
  hours: 260
)
Course.create(
  name: "Computational Physics",
  hours: 300
)
Course.create(
  name: "Chamber Music",
  hours: 190
)
