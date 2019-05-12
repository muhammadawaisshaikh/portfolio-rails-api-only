class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :imgUrl
      t.string :name
      t.string :associationWith
      t.string :role

      t.timestamps
    end
  end
end
