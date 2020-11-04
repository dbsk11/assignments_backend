class Student < ApplicationRecord
    has_many :assignments
    has_many :teachers, through: :assignments
    has_many :student_klasses
    has_many :teacher_klasses, through: :student_klasses

end
