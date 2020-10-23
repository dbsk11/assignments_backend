class Teacher < ApplicationRecord
    has_many :teacher_klasses
    has_many :klasses, through :teacher_klasses
end
