class CreateCertifications < ActiveRecord::Migration[5.2]
  def change
    create_table :certifications do |t|
      t.string :image
      t.string :name
      t.string :organization
      t.string :organizationImage
      t.string :date
      t.string :type

      t.timestamps
    end
  end
end
