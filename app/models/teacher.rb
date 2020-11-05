class Teacher < ApplicationRecord
    has_many :assignments
    has_many :students, through: :assigments
    has_many :teacher_klasses
    has_many :klasses, through: :teacher_klasses
    has_secure_password
    validates :username, uniqueness: true

    def display_name
        "Professor #{self.first_name} #{self.last_name}"
    end
    
end
