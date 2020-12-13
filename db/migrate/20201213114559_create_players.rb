class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.belongs_to :team, index: true, foreign_key: true, null: false
      t.string :name, null: false
      t.string :bio
      t.float :playtime, null: false
      t.float :kd, null: false

      t.timestamps
    end
  end
end
