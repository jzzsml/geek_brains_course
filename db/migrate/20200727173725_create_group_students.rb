class CreateGroupStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :group_students do |t|
      t.integer :student_id
      t.integer :group_id

      t.timestamps
    end
  end
end
