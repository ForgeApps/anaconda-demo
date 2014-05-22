class AnacondaMigrationForPostAsset < ActiveRecord::Migration
  def change
    add_column :posts, :asset_filename, :string
    add_column :posts, :asset_file_path, :text
    add_column :posts, :asset_size, :integer
    add_column :posts, :asset_original_filename, :text
    add_column :posts, :asset_stored_privately, :boolean
    add_column :posts, :asset_type, :string
  end
end
