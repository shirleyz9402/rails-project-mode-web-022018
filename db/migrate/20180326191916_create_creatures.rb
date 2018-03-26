class CreateCreatures < ActiveRecord::Migration[5.1]
  def change
    create_table :creatures do |t|
      t.references :user, foreign_key: true
      t.integer :size
      t.boolean :fly
      t.boolean :swim
      t.boolean :alive
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
