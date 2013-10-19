class ChangeAppearanceColorToInteger < ActiveRecord::Migration
  def change
    change_column :beer_profiles, :appearance_color, :integer
  end
end
