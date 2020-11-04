class Teacher < ApplicationRecord
    has_many :assignments
    has_many :students, through: :assigments

end
