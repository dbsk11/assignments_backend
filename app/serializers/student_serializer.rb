class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :dob, :username, :password, :string
end
