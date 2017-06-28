class CreatePos < ActiveRecord::Migration[5.0]
  def change
    create_table :pos do |t|
      t.references :customer, foreign_key: true
      t.references :quote, foreign_key: true
      t.date :date_received
      t.decimal :amount

      t.timestamps
    end
  end
end
