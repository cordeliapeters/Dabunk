class CreateUndergrads < ActiveRecord::Migration
  def change
    create_table :undergraduates do |t|

      t.timestamps null: false
    end
  end
end
