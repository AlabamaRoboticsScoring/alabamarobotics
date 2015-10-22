class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :members
      t.integer :age_group
      t.string :school

      t.timestamps null: false
    end
  end
end
