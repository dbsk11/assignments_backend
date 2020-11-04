class TeacherKlass < ApplicationRecord
    belongs_to :teacher
    belongs_to :klass 
    has_many :student_klasses
end
