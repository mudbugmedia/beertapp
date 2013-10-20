class AddRatingAndNotesToBeerProfiles < ActiveRecord::Migration
  def change
    add_column :beer_profiles, :rating, :integer
    add_column :beer_profiles, :notes, :text
  end
end
