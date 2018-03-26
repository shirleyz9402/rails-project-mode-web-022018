class CreateEdibles < ActiveRecord::Migration[5.1]
  def change
    create_table :edibles do |t|
      t.boolean :fly
      t.boolean :swim
      t.integer :value
      t.boolean :deadly
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
