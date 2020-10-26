class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :task
      t.string :course
      t.git :grade
      t.string :add
      t.string :.

      t.timestamps
    end
  end
end
