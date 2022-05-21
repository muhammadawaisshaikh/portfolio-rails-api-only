class CreateTechTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :tech_talks do |t|
      t.string :title
      t.datetime :date
      t.string :organization
      t.string :image

      t.timestamps
    end
  end
end
