class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :image
      t.string :university
      t.string :degree
      t.string :tenure

      t.timestamps
    end
  end
end
