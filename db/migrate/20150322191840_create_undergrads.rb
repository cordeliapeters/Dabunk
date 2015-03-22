class CreateUndergrads < ActiveRecord::Migration
  def change
    create_table :undergrads do |t|

      t.timestamps null: false
    end
  end
end
