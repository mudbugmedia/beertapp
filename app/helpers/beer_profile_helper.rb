module BeerProfileHelper

  STRENGTH_ATTRIBUTE = %w(Faint Average Strong)

  PROFILE_ATTRIBUTES = {
    size: %w(Spare Small Average Large Huge),
    texture: %w(Rocky Creamy Frothy Fizzy),
    color: %w(White Yellow Tan Dark),
    retention: %w(Short Long),
    lacing: %w(None Faint Good Great),
    opacity: %w(Clear Hazy Cloudy Opaque),
    body_carbonation: %w(Flat Light Average Heavy),
    malt: STRENGTH_ATTRIBUTE,
    aroma_hops: STRENGTH_ATTRIBUTE,
    esters: STRENGTH_ATTRIBUTE,
    phenols: STRENGTH_ATTRIBUTE,
    bitterness: STRENGTH_ATTRIBUTE,
    grain: %w(Bread/Biscuit Burnt Caramel Cereal Chocolate Coffee/Espresso Malt Nutty Oat Roasted Rye Toffee),
    flavor_hops: %w(Dank Flowers Geranium Grapefruit Herbal Lemon Lemongrass Orange\ Blossom Pine Resinous Spicy Perfume),
    fruit: %w(Apple Apricot Bananna Blackberry Blueberry Cassis Cherry Cranberry Orange Peach Raspberry Strawberry Plum Prune Pear Pineapple),
    herbs: %w(Anise Caraway Chamomille Clove Cinnamon Coriander Grains\ of\ Paradise Lavender Orange\ Peel Rose\ Hips Sassafras Nutmeg),
    funk: %w(Barnyard Horse Leather Wood Sweat Cheese Vinegar),
    mineral: %w(Bloody Chalk Copper Iron Salty),
    other: %w(Bubble\ Gum Soy\ Sauce Licorice Cola Tobacoo Eggs),
    body: %w(Light Medium Full),
    mouth_carbonation: STRENGTH_ATTRIBUTE,
    alcohol: STRENGTH_ATTRIBUTE,
    richness: %w(Thin Creamy Chewy),
    astringency: STRENGTH_ATTRIBUTE,
    finish: %w(Sweet Medium Dry)
  }

  COLOR_ATTRIBUTES = {
    1 => {
      name: 'Pale Straw',
      hex_value: 'F9FF2D'
    },
    2 => {
      name: 'Straw',
      hex_value: 'FEEF20'
    },
    3 => {
      name: 'Pale Gold',
      hex_value: 'FFDB34'
    },
    4 => {
      name: 'Deep Gold',
      hex_value: 'FFA42F'
    },
    5 => {
      name: 'Pale Amber',
      hex_value: 'FF9A2F'
    },
    6 => {
      name: 'Medium Amber',
      hex_value: 'E27750'
    },
    7 => {
      name: 'Deep Amber',
      hex_value: '9D4B33'
    },
    8 => {
      name: 'Amber-Brown',
      hex_value: '883D3D'
    },
    9 => {
      name: 'Brown',
      hex_value: '60302D'
    },
    10 => {
      name: 'Ruby Brown',
      hex_value: '4E3A29'
    },
    11 => {
      name: 'Deep Brown',
      hex_value: '392F2E'
    },
    12 => {
      name: 'Black',
      hex_value: '31302C'
    }
  }

  def profile_field(form, field, profile, from_untapped)
    if from_untapped
      profile.send(field)
    else
      form.text_field field
    end
  end

  def appearance_blank?
    appearance_head_blank? && appearance_body_blank? && @beer_profile.appearance_notes.blank?
  end

  def appearance_head_blank?
    @beer_profile.appearance_head_size.blank? &&
      @beer_profile.appearance_head_texture.blank? &&
      @beer_profile.appearance_head_color.blank? &&
      @beer_profile.appearance_head_retention.blank?
  end

  def appearance_body_blank?
    @beer_profile.appearance_body_opacity.blank? &&
      @beer_profile.appearance_body_carbonation.blank? &&
      @beer_profile.appearance_color.blank?
  end
  
  def aroma_section_blank?
    @beer_profile.aroma_malt.blank? &&
      @beer_profile.aroma_hops.blank? &&
      @beer_profile.aroma_esters.blank? &&
      @beer_profile.aroma_phenols.blank? &&
      @beer_profile.aroma_bitterness.blank?
  end

  def aroma_flavor_section_blank?
    @beer_profile.aroma_flavor_grain.blank? &&
      @beer_profile.aroma_flavor_hops.blank? &&
      @beer_profile.aroma_flavor_fruit.blank? &&
      @beer_profile.aroma_flavor_herbs.blank? &&
      @beer_profile.aroma_flavor_funk.blank? &&
      @beer_profile.aroma_flavor_mineral.blank? &&
      @beer_profile.aroma_flavor_other.blank?
  end
  def taste_section_blank?
    taste_flavor_section_blank? &&
      @beer_profile.taste_notes.blank?
      @beer_profile.taste_malt.blank?
      @beer_profile.taste_hops.blank?
      @beer_profile.taste_esters.blank?
      @beer_profile.taste_phenols.blank?
      @beer_profile.taste_bitterness.blank?
  end

  def taste_flavor_section_blank?
    @beer_profile.taste_flavor_grain.blank? &&
      @beer_profile.taste_flavor_hops.blank? &&
      @beer_profile.taste_flavor_fruit.blank? &&
      @beer_profile.taste_flavor_herbs.blank? &&
      @beer_profile.taste_flavor_funk.blank? &&
      @beer_profile.taste_flavor_mineral.blank? &&
      @beer_profile.taste_flavor_other.blank?
  end

  def mouthfeel_section_blank?
    @beer_profile.mouth_body.blank? &&
      @beer_profile.mouth_carbonation.blank? &&
      @beer_profile.mouth_alcohol.blank? &&
      @beer_profile.mouth_richness.blank? &&
      @beer_profile.mouth_astringency.blank? &&
      @beer_profile.mouth_finish.blank? &&
      @beer_profile.mouth_notes.blank?
  end

end
