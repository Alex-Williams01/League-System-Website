class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.belongs_to :university, index: true, foreign_key: true, null: false
      t.string :name, null: false
      t.integer :points, null: false

      t.timestamps
    end
  end
end
