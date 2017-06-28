class CreateAdjustments < ActiveRecord::Migration[5.0]
  def change
    create_table :adjustments do |t|
      t.references :quote, foreign_key: true
      t.string :reason
      t.decimal :price

      t.timestamps
    end
  end
end
