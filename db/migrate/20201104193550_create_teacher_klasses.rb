class CreateTeacherKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_klasses do |t|
      t.belongs_to :teacher, null: false, foreign_key: true
      t.belongs_to :klass, null: false, foreign_key: true

      t.timestamps
    end
  end
end
