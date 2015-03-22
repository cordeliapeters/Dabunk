class CreateUndergraduates < ActiveRecord::Migration
  def change
    create_table :undergraduates do |t|
      t.string :grade
      t.string :hometown
      t.string :activities
      t.string :major
      t.string :minor

      t.timestamps null: false
    end
  end
end
