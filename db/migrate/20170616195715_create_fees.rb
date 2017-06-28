class CreateFees < ActiveRecord::Migration[5.0]
  def change
    create_table :fees do |t|
      t.references :quote, foreign_key: true
      t.references :fee_type, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
