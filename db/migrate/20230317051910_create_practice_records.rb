class CreatePracticeRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :practice_records do |t|
      
      #追加
      t.integer :letter_id
      t.integer :user_id
      t.timestamps
    end
  end
end
