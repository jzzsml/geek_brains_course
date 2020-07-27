class CreateWebCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :web_courses do |t|
      t.string :name
      t.string :description
      t.integer :days_duration

      t.timestamps
    end
  end
end
