class CreateHighSchoolers < ActiveRecord::Migration
  def change
    create_table :high_schoolers do |t|

      t.timestamps null: false
    end
  end
end
