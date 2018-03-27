class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.boolean :swim
      t.boolean :fly

      t.timestamps
    end
  end
end
