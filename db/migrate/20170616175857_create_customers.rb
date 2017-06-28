class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :division
      t.string :site
      t.string :mailing_address
      t.references :kms_version, foreign_key: true
      t.string :project_code

      t.timestamps
    end
  end
end
