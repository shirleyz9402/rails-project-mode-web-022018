class CreateEdibles < ActiveRecord::Migration[5.1]
  def change
    create_table :edibles do |t|
      t.string :name
      t.boolean :fly
      t.boolean :swim
      t.integer :value
      t.boolean :eaten, default: false
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
