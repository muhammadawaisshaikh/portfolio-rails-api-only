class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :title
      t.string :typo
      t.string :typoBold
      t.string :skillsTypo
      t.string :sideAvatar

      t.timestamps
    end
  end
end
