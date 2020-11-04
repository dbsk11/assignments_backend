# Delete database
puts 'deleting students'
Student.destroy_all

puts 'deleting teachers'
Teacher.destroy_all

puts 'deleting assignments'
Assignment.destroy_all

puts 'deleting klasses'
Klass.destroy_all

puts 'deleting teacher_klasses'
TeacherKlass.destroy_all

puts 'deleting student_klasses'
StudentKlass.destroy_all



puts 'creating teachers'
Teacher.create(first_name: "Jessica", last_name: Faker::Name.last_name, subject: "Science", email: Faker::Internet.email, username: "Jessica", password: "abc123")
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "Science", email: Faker::Internet.email, username: "Josh", password: "abc123")
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "Math", email: Faker::Internet.email, username: "Jen", password: "abc123")
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "Math", email: Faker::Internet.email, username: "Saneta", password: "abc123")
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "History", email: Faker::Internet.email, username: "Cathy", password: "abc123")
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "History", email: Faker::Internet.email, username: "Janice", password: "abc123")
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "English", email: Faker::Internet.email, username: "Jenny", password: "abc123")
Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, subject: "English", email: Faker::Internet.email, username: "Essie", password: "abc123")

puts 'creating klasses'
Klass.create(name: "Biology", subject: "Science")
Klass.create(name: "Chemistry", subject: "Science")
Klass.create(name: "Physics", subject: "Science")
Klass.create(name: "AP Biology", subject: "Science")

Klass.create(name: "Algebra I", subject: "Math")
Klass.create(name: "Algebra II", subject: "Math")
Klass.create(name: "Geometry", subject: "Math")
Klass.create(name: "AP Calculus", subject: "Math")

Klass.create(name: "US History I", subject: "History")
Klass.create(name: "US History II", subject: "History")
Klass.create(name: "Government & Politics", subject: "History")
Klass.create(name: "European History", subject: "History")

Klass.create(name: "English I", subject: "English")
Klass.create(name: "English II", subject: "English")
Klass.create(name: "English III", subject: "English")
Klass.create(name: "English IV", subject: "English")

puts 'creating teacher_klasses'
TeacherKlass.create(teacher_id: 1, klass_id: 1)
TeacherKlass.create(teacher_id: 1, klass_id: 2)
TeacherKlass.create(teacher_id: 1, klass_id: 3)
TeacherKlass.create(teacher_id: 1, klass_id: 4)
4
TeacherKlass.create(teacher_id: 2, klass_id: 1)
TeacherKlass.create(teacher_id: 2, klass_id: 2)
TeacherKlass.create(teacher_id: 2, klass_id: 3)
TeacherKlass.create(teacher_id: 2, klass_id: 4)
8
TeacherKlass.create(teacher_id: 3, klass_id: 5)
TeacherKlass.create(teacher_id: 3, klass_id: 6)
TeacherKlass.create(teacher_id: 3, klass_id: 7)
TeacherKlass.create(teacher_id: 3, klass_id: 8)
12
TeacherKlass.create(teacher_id: 4, klass_id: 5)
TeacherKlass.create(teacher_id: 4, klass_id: 6)
TeacherKlass.create(teacher_id: 4, klass_id: 7)
TeacherKlass.create(teacher_id: 4, klass_id: 8)
16
TeacherKlass.create(teacher_id: 5, klass_id: 9)
TeacherKlass.create(teacher_id: 5, klass_id: 10)
TeacherKlass.create(teacher_id: 5, klass_id: 11)
TeacherKlass.create(teacher_id: 5, klass_id: 12)
20
TeacherKlass.create(teacher_id: 6, klass_id: 9)
TeacherKlass.create(teacher_id: 6, klass_id: 10)
TeacherKlass.create(teacher_id: 6, klass_id: 11)
TeacherKlass.create(teacher_id: 6, klass_id: 12)
24
TeacherKlass.create(teacher_id: 7, klass_id: 13)
TeacherKlass.create(teacher_id: 7, klass_id: 14)
TeacherKlass.create(teacher_id: 7, klass_id: 15)
TeacherKlass.create(teacher_id: 7, klass_id: 16)
28
TeacherKlass.create(teacher_id: 8, klass_id: 13)
TeacherKlass.create(teacher_id: 8, klass_id: 14)
TeacherKlass.create(teacher_id: 8, klass_id: 15)
TeacherKlass.create(teacher_id: 8, klass_id: 16)
32

puts 'creating students'
Student.create(first_name: "Beth", last_name: Faker::Name.last_name, email: Faker::Internet.email, dob: Faker::Date.birthday(min_age: 10, max_age: 18), username: "Beth", password: "abc123")
19.times do
    Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, dob: Faker::Date.birthday(min_age: 10, max_age: 18), username: Faker::Name.first_name, password: "abc123")
end

puts 'creating student_klasses'
StudentKlass.create(student_id: 1, teacher_klass_id: 1)
StudentKlass.create(student_id: 1, teacher_klass_id: 9)
StudentKlass.create(student_id: 1, teacher_klass_id: 17)
StudentKlass.create(student_id: 1, teacher_klass_id: 25)
StudentKlass.create(student_id: 2, teacher_klass_id: 2)
StudentKlass.create(student_id: 2, teacher_klass_id: 10)
StudentKlass.create(student_id: 2, teacher_klass_id: 18)
StudentKlass.create(student_id: 2, teacher_klass_id: 26)
StudentKlass.create(student_id: 3, teacher_klass_id: 3)
StudentKlass.create(student_id: 3, teacher_klass_id: 11)
StudentKlass.create(student_id: 3, teacher_klass_id: 19)
StudentKlass.create(student_id: 3, teacher_klass_id: 27)
StudentKlass.create(student_id: 4, teacher_klass_id: 4)
StudentKlass.create(student_id: 4, teacher_klass_id: 12)
StudentKlass.create(student_id: 4, teacher_klass_id: 20)
StudentKlass.create(student_id: 4, teacher_klass_id: 28)

StudentKlass.create(student_id: 5, teacher_klass_id: 1)
StudentKlass.create(student_id: 5, teacher_klass_id: 9)
StudentKlass.create(student_id: 5, teacher_klass_id: 17)
StudentKlass.create(student_id: 5, teacher_klass_id: 25)
StudentKlass.create(student_id: 6, teacher_klass_id: 2)
StudentKlass.create(student_id: 6, teacher_klass_id: 10)
StudentKlass.create(student_id: 6, teacher_klass_id: 18)
StudentKlass.create(student_id: 6, teacher_klass_id: 26)
StudentKlass.create(student_id: 7, teacher_klass_id: 3)
StudentKlass.create(student_id: 7, teacher_klass_id: 11)
StudentKlass.create(student_id: 7, teacher_klass_id: 19)
StudentKlass.create(student_id: 7, teacher_klass_id: 27)
StudentKlass.create(student_id: 8, teacher_klass_id: 4)
StudentKlass.create(student_id: 8, teacher_klass_id: 12)
StudentKlass.create(student_id: 8, teacher_klass_id: 20)
StudentKlass.create(student_id: 8, teacher_klass_id: 28)

StudentKlass.create(student_id: 9, teacher_klass_id: 1)
StudentKlass.create(student_id: 9, teacher_klass_id: 9)
StudentKlass.create(student_id: 9, teacher_klass_id: 17)
StudentKlass.create(student_id: 9, teacher_klass_id: 25)
StudentKlass.create(student_id: 10, teacher_klass_id: 2)
StudentKlass.create(student_id: 10, teacher_klass_id: 10)
StudentKlass.create(student_id: 10, teacher_klass_id: 18)
StudentKlass.create(student_id: 10, teacher_klass_id: 26)
StudentKlass.create(student_id: 11, teacher_klass_id: 3)
StudentKlass.create(student_id: 11, teacher_klass_id: 11)
StudentKlass.create(student_id: 11, teacher_klass_id: 19)
StudentKlass.create(student_id: 11, teacher_klass_id: 27)
StudentKlass.create(student_id: 12, teacher_klass_id: 4)
StudentKlass.create(student_id: 12, teacher_klass_id: 12)
StudentKlass.create(student_id: 12, teacher_klass_id: 20)
StudentKlass.create(student_id: 12, teacher_klass_id: 28)

StudentKlass.create(student_id: 13, teacher_klass_id: 1)
StudentKlass.create(student_id: 13, teacher_klass_id: 9)
StudentKlass.create(student_id: 13, teacher_klass_id: 17)
StudentKlass.create(student_id: 13, teacher_klass_id: 25)
StudentKlass.create(student_id: 14, teacher_klass_id: 2)
StudentKlass.create(student_id: 14, teacher_klass_id: 10)
StudentKlass.create(student_id: 14, teacher_klass_id: 18)
StudentKlass.create(student_id: 14, teacher_klass_id: 26)
StudentKlass.create(student_id: 15, teacher_klass_id: 3)
StudentKlass.create(student_id: 15, teacher_klass_id: 11)
StudentKlass.create(student_id: 15, teacher_klass_id: 19)
StudentKlass.create(student_id: 15, teacher_klass_id: 27)
StudentKlass.create(student_id: 16, teacher_klass_id: 4)
StudentKlass.create(student_id: 16, teacher_klass_id: 12)
StudentKlass.create(student_id: 16, teacher_klass_id: 20)
StudentKlass.create(student_id: 16, teacher_klass_id: 28)

StudentKlass.create(student_id: 17, teacher_klass_id: 1)
StudentKlass.create(student_id: 17, teacher_klass_id: 9)
StudentKlass.create(student_id: 17, teacher_klass_id: 17)
StudentKlass.create(student_id: 17, teacher_klass_id: 25)
StudentKlass.create(student_id: 18, teacher_klass_id: 2)
StudentKlass.create(student_id: 18, teacher_klass_id: 10)
StudentKlass.create(student_id: 18, teacher_klass_id: 18)
StudentKlass.create(student_id: 18, teacher_klass_id: 26)
StudentKlass.create(student_id: 19, teacher_klass_id: 3)
StudentKlass.create(student_id: 19, teacher_klass_id: 11)
StudentKlass.create(student_id: 19, teacher_klass_id: 19)
StudentKlass.create(student_id: 19, teacher_klass_id: 27)
StudentKlass.create(student_id: 20, teacher_klass_id: 4)
StudentKlass.create(student_id: 20, teacher_klass_id: 12)
StudentKlass.create(student_id: 20, teacher_klass_id: 20)
StudentKlass.create(student_id: 20, teacher_klass_id: 28)

puts 'creating assignments'
Assignment.create(task: "Answer questions 1-10", course: "Biology", grade: "98", teacher_id: 1, student_id: 1)
Assignment.create(task: "Complete the short response questions", course: "Biology", grade: "93", teacher_id: 1, student_id: 1)
Assignment.create(task: "Complete the handout", course: "Biology", grade: "95", teacher_id: 1, student_id: 1)
Assignment.create(task: "Answer all the even questions on page 28", course: "Biology", grade: "88", teacher_id: 1, student_id: 1)
Assignment.create(task: "Fill in the venn diagram", course: "Biology", grade: "82", teacher_id: 1, student_id: 1)
