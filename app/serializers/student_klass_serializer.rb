class StudentKlassSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :teacher_klass
end
