class AddUserIdAndBeerIdToBeerProfiles < ActiveRecord::Migration
  def up
    add_column :beer_profiles, :user_id, :integer
    add_column :beer_profiles, :beer_id, :integer
  end

  def down
    remove_column :beer_profiles, :user_id
    remove_column :beer_profiles, :beer_id
  end
end
