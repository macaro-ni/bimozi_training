class AddUserIdToLetter < ActiveRecord::Migration[6.1]
  def change
    add_column :letters, :user_id, :integer
  end
end
