class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :college_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
