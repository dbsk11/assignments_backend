class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :subject
      t.string :email
      t.string :username
      t.string :password
      t.string :string

      t.timestamps
    end
  end
end