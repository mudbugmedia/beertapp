class AddImagePathToBeerProfiles < ActiveRecord::Migration
  def change
    add_column :beer_profiles, :image_path, :string
  end
end
