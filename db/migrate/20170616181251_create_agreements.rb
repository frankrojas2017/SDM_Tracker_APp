class CreateAgreements < ActiveRecord::Migration[5.0]
  def change
    create_table :agreements do |t|
      t.references :agreement_type, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.boolean :approved
      t.string :link

      t.timestamps
    end
  end
end
