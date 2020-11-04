class CreateStudentKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :student_klasses do |t|

      t.timestamps
    end
  end
end
