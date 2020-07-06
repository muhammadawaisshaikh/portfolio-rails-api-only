class AddDevToProfileToSocials < ActiveRecord::Migration[5.2]
  def change
    add_column :socials, :dev_to_profile, :string
  end
end
