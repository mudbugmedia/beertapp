class RenameEsthersToEsters < ActiveRecord::Migration
  def change
    rename_column :beer_profiles, :flavor_esthers, :flavor_esters
  end
end
