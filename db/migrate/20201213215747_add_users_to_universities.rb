class AddUsersToUniversities < ActiveRecord::Migration[5.2]
  def up
    add_reference :universities, :user, index: true
    University.reset_column_information
    user = User.first

    University.all.each do |university|
      university.user_id = user.id
      university.save!
    end

    change_column_null :universities, :user_id, false
    add_foreign_key :universities, :users
  end

  def down
    remove_foreign_key :university, :users
    remove_reference :university, :user, index: true
  end
end
