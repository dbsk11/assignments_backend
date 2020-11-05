class Student < ApplicationRecord
    has_many :assignments
    has_many :teachers, through: :assignments
    has_many :student_klasses
    has_many :teacher_klasses, through: :student_klasses
    has_secure_password
    validates :username, uniqueness: true

    def display_age
        Time.now.year - self.dob.slice(0,4).to_i
    end
    
    def fullname
        "#{self.first_name} #{self.last_name}"
    end

end
