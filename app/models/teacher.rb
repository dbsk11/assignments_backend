class Teacher < ApplicationRecord
    has_many :assignments
    has_many :students, through: :assigments

    def display_name
        "Professor #{self.first_name} #{self.last_name}"
    end
    
end
