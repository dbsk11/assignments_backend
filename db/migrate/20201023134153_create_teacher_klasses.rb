class CreateTeacherKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_klasses do |t|

      t.timestamps
    end
  end
end
