class CreateUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :urls
    add_column :urls, :redirect_url, :string
    add_column :urls, :local_parameter, :string
  end
end
