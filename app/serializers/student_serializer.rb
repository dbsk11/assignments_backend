class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :dob, :display_age, :fullname, :username
  has_many :student_klasses
  has_many :assignments
end
