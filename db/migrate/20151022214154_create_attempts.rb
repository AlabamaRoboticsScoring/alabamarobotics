class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.references :team, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true
      t.integer :points
      t.timestamp :completion_time
      t.string :judge_name

      t.timestamps null: false
    end
  end
end
