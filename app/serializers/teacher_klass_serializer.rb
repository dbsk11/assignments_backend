class TeacherKlassSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :subject, :email, :username, :password
end
