class AddIndexToUniversities < ActiveRecord::Migration[5.2]
  def change
    add_index :universities, :name, unique: true
  end
end
