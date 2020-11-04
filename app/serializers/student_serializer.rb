class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :dob, :display_age, :fullname, :username
  has_many :student_classes
  has_many :conversations
end
