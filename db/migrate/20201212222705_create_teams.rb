class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.belongs_to :university, foreign_key: true
      t.string :name
      t.integer :points

      t.timestamps
    end
  end
end
