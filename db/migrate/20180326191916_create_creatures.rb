class CreateCreatures < ActiveRecord::Migration[5.1]
  def change
    create_table :creatures do |t|
      t.references :user, foreign_key: true
      t.integer :size, default: 5
      t.boolean :fly, default: false
      t.boolean :swim, default: false
      t.boolean :alive, default: true
      t.string :name
      t.string :creature_type, default: "hungry hungry caterpillar"

      t.timestamps
    end
  end
end
