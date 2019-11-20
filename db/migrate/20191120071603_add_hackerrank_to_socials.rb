class AddHackerrankToSocials < ActiveRecord::Migration[5.2]
  def change
    add_column :socials, :hackerrank, :string
  end
end
