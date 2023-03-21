class CreateLetters < ActiveRecord::Migration[6.1]
  def change
    create_table :letters do |t|
    
    #追加
      t.integer :genre_id, null: false
      t.string :name,     null: false
      
      t.timestamps
    end
  end
end
