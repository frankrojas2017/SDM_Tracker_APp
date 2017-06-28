class CreateKmsVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :kms_versions do |t|
      t.string :name

      t.timestamps
    end
  end
end
