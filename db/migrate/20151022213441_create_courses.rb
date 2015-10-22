class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :challenge, index: true, foreign_key: true
      t.string :pin

      t.timestamps null: false
    end
  end
end
