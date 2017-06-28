class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.references :customer, foreign_key: true
      t.date :quote_date
      t.date :valid_to
      t.decimal :total

      t.timestamps
    end
  end
end
