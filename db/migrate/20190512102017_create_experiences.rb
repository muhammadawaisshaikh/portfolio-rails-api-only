class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :avatarUrl
      t.string :designation
      t.string :organization
      t.string :tenure

      t.timestamps
    end
  end
end
