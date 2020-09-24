# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.destroy_all
Student.destroy_all

Instructor.create(name: "Antonio")
Instructor.create(name: "Raul")
Instructor.create(name: "Joe")

30.times do
    Student.create(name: Faker::Name.name, major: Faker::Educator.subject, age: rand(19..50), instructor_id: Instructor.all.sample.id)
end