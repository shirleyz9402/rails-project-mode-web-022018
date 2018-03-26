class CreateDecisions < ActiveRecord::Migration[5.1]
  def change
    create_table :decisions do |t|
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
