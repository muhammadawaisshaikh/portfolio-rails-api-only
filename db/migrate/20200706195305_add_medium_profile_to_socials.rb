class AddMediumProfileToSocials < ActiveRecord::Migration[5.2]
  def change
    add_column :socials, :medium_profile, :string
  end
end
