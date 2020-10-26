class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :task, :course, :grade
end
