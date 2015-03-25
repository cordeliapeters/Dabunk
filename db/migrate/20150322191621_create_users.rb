class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :type
      t.string :password_digest
      t.string :grade
      t.string :hometown
      t.string :activities
      t.string :major
      t.string :minor
      t.integer :college_id
      t.string :greek

      t.timestamps
    end
  end
end
