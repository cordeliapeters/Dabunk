class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.integer :population
      t.string :school_type
      t.string :acronym
      t.string :address
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :web_url
      t.boolean :greek_life

      t.timestamps null: false
    end
  end
end
