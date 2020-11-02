class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :task
      t.string :course
      t.string :grade

      t.timestamps
    end
  end
end
