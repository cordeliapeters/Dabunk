class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.integer :undergrad_id
      t.integer :college_id
      t.string :category

      t.timestamps null: false
    end
  end
end
