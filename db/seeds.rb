# Delete database
puts 'deleting students'
Student.destroy_all

puts 'deleting teachers'
Teacher.destroy_all

puts 'deleting assignments'
Assignment.destroy_all

puts 'creating students'
Student.create(first_name: "Beth", last_name: Faker::Name.last_name, email: Faker::Internet.email, dob: Faker::Date.birthday(min_age: 10, max_age: 18), username: "Beth", password: "abc123")
19.times do
    Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, dob: Faker::Date.birthday(min_age: 10, max_age: 18), username: Faker::Name.first_name, password: "abc123")
end

puts 'creating teachers'
Teacher.create(first_name: "Jessica", last_name: Faker::Name.last_name, subject: "Biology", email: Faker::Internet.email, username: "Jessica", password: "abc123")
4.times do
    Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: Faker::Educator.subject, email: Faker::Internet.email, username: Faker::Name.first_name, password: "abc123")
end

puts 'creating assignments'
Assignment.create(task: "Answer questions 1-10", course: "Biology", grade: "98", teacher_id: 1, student_id: 1)
Assignment.create(task: "Complete the short response questions", course: "Biology", grade: "93", teacher_id: 1, student_id: 1)
Assignment.create(task: "Complete the handout", course: "Biology", grade: "95", teacher_id: 1, student_id: 1)
Assignment.create(task: "Answer all the even questions on page 28", course: "Biology", grade: "88", teacher_id: 1, student_id: 1)
Assignment.create(task: "Fill in the venn diagram", course: "Biology", grade: "82", teacher_id: 1, student_id: 1)
