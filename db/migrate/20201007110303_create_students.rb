class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :username
      t.string :matricule
      t.string :matricule_school
      t.string :contact_student_1
      t.string :contact_student_2
      t.string :contact_parent_1
      t.string :contact_parent_2
      t.string :slug
      t.references :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
