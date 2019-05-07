class CreateSocials < ActiveRecord::Migration[5.2]
  def change
    create_table :socials do |t|
      t.string :linkedin
      t.string :twitter
      t.string :github

      t.timestamps
    end
  end
end
