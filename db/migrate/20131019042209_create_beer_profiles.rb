class CreateBeerProfiles < ActiveRecord::Migration
  def change
    create_table :beer_profiles do |t|
      t.string :appearance_head_size
      t.string :appearance_head_texture
      t.string :appearance_head_color
      t.string :appearance_head_retention
      t.string :appearance_lacing
      t.string :appearance_body_opacity
      t.string :appearance_body_carbonation
      t.string :appearance_color
      t.text :appearance_notes
      t.string :aroma_malt
      t.string :aroma_hops
      t.string :aroma_esters
      t.string :aroma_phenols
      t.string :aroma_bitterness
      t.string :aroma_flavor_grain
      t.string :aroma_flavor_hops
      t.string :aroma_flavor_fruit
      t.string :aroma_flavor_herbs
      t.string :aroma_flavor_funk
      t.string :aroma_flavor_mineral
      t.string :aroma_flavor_other
      t.text :aroma_notes
      t.string :taste_malt
      t.string :taste_hops
      t.string :taste_esters
      t.string :taste_phenols
      t.string :taste_bitterness
      t.string :taste_flavor_grain
      t.string :taste_flavor_hops
      t.string :taste_flavor_fruit
      t.string :taste_flavor_herbs
      t.string :taste_flavor_funk
      t.string :taste_flavor_mineral
      t.string :taste_flavor_other
      t.text :taste_notes
      t.string :mouth_body
      t.string :mouth_carbonation
      t.string :mouth_alcohol
      t.string :mouth_richness
      t.string :mouth_astringency
      t.string :mouth_finish
      t.string :mouth_notes
      t.integer :flavor_esthers
      t.integer :flavor_alcoholic
      t.integer :flavor_citrus
      t.integer :flavor_hoppy
      t.integer :flavor_floral
      t.integer :flavor_spicy
      t.integer :flavor_malty
      t.integer :flavor_toffee
      t.integer :flavor_burnt
      t.integer :flavor_sweet
      t.integer :flavor_sour
      t.integer :flavor_bitter
      t.integer :flavor_astringent
      t.integer :flavor_full_bodied
      t.integer :flavor_lingers

      t.timestamps
    end
  end
end
