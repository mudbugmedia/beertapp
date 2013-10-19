class UpdateMouthNotesToText < ActiveRecord::Migration
  def change
    change_column :beer_profiles, :mouth_notes, :text
  end
end
