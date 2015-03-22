class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :undergraduate_id
      t.integer :college_id
      t.string :category

      t.timestamps null: false
    end
  end
end
