class Klass < ApplicationRecord
    has_many :teacher_klasses
    has_many :teachers, through: :teacher_klasses
end
