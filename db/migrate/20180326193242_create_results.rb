class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.references :user, foreign_key: true
      t.references :creature, foreign_key: true
      t.references :location, foreign_key: true
      t.string :cause_of_death 

      t.timestamps
    end
  end
end
