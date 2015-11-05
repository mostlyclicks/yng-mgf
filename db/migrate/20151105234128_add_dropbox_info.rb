class AddDropboxInfo < ActiveRecord::Migration
  def change
    add_column :users, :dropbox_info, :string
  end
end
