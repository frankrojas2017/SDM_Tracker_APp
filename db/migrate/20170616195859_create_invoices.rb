class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.integer :invoice_number
      t.date :date_sent
      t.references :po, foreign_key: true
      t.boolean :paid

      t.timestamps
    end
  end
end
