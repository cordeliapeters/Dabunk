class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :high_schooler_id
      t.integer :undergraduate_id

      t.timestamps null: false
    end
  end
end
