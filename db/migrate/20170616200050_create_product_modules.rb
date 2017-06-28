class CreateProductModules < ActiveRecord::Migration[5.0]
  def change
    create_table :product_modules do |t|
      t.references :module_type, foreign_key: true
      t.references :customer, foreign_key: true
      t.references :po, foreign_key: true

      t.timestamps
    end
  end
end
