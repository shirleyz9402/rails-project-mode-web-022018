class CreateDecisions < ActiveRecord::Migration[5.1]
  def change
    create_table :decisions do |t|
      t.references :location, foreign_key: true
      t.string :content
      t.boolean :alive, default: true
      t.integer :goto, default: nil
      t.string :cod, default: "staying alibe"



      t.timestamps
    end
  end
end
