class Student < ApplicationRecord
    has_many :assignments
    has_many :teachers, through: :assignments

    def display_age
        Time.now.year - self.dob.slice(0,4).to_i
    end
    
    def fullname
        "#{self.first_name} #{self.last_name}"
    end

end
