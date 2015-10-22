class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.boolean :duration?

      t.timestamps null: false
    end
  end
end
