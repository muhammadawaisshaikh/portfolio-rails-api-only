class AddSiteUrlToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :site_url, :string
  end
end
