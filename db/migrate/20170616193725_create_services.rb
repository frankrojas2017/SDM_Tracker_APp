class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.references :quote, foreign_key: true
      t.string :Service_type
      t.integer :quantity
      t.decimal :price
      t.decimal :service_total
      t.date :term_start
      t.date :term_end
      t.string :term_length
      t.decimal :annual_increase
      t.string :CRM_Number

      t.timestamps
    end
  end
end
