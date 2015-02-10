class RenamePhoto < ActiveRecord::Migration
  def change
    rename_column :pins, :photo_url, :photo
  end
end
