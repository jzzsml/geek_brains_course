class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.datetime :start_time
      t.integer :web_course_id
      t.boolean :active, default: true

      t.timestamps
    end

    add_index :groups, :web_course_id
    add_index :groups, :start_time
  end
end
