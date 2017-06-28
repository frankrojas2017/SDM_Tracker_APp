class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :address
      t.string :business_phone
      t.string :country
      t.string :mobile_phone
      t.string :email
      t.boolean :primary
      t.string :fax_number
      t.boolean :billing
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
