class AddBeerColumnsToBeerProfiles < ActiveRecord::Migration
  def up
    add_column :beer_profiles, :name, :string
    add_column :beer_profiles, :style, :string
    add_column :beer_profiles, :brewery, :string
    add_column :beer_profiles, :abv, :decimal
  end

  def down
    remove_column :beer_profiles, :name
    remove_column :beer_profiles, :style
    remove_column :beer_profiles, :brewery
    remove_column :beer_profiles, :abv
  end
end
