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
    hops: STRENGTH_ATTRIBUTE,
    esters: STRENGTH_ATTRIBUTE,
    phenols: STRENGTH_ATTRIBUTE,
    bitterness: STRENGTH_ATTRIBUTE,
    grain: %w(Bread/Biscuit Burnt Caramel Cereal Chocolate Coffee/Espresso Malt Nutty Oat Roasted Rye Toffee),
    hops: %w(Dank Flowers Geranium Grapefruit Herbal Lemon Lemongrass Orange\ Blossom Pine Resinous Spicy Perfume),
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
    '2' => {
      name: 'Pale Straw',
      hex_value: 'F9FF2D'
    },
    '3' => {
      name: 'Straw',
      hex_value: 'FEEF20'
    },
    '4' => {
      name: 'Pale Gold',
      hex_value: 'FFDB34'
    },
    '6' => {
      name: 'Deep Gold',
      hex_value: 'FFA42F'
    },
    '9' => {
      name: 'Pale Amber',
      hex_value: 'FF9A2F'
    },
    '12' => {
      name: 'Medium Amber',
      hex_value: 'E27750'
    },
    '15' => {
      name: 'Deep Amber',
      hex_value: '9D4B33'
    },
    '18' => {
      name: 'Amber-Brown',
      hex_value: '883D3D'
    },
    '20' => {
      name: 'Brown',
      hex_value: '60302D'
    },
    '24' => {
      name: 'Ruby Brown',
      hex_value: '4E3A29'
    },
    '30' => {
      name: 'Deep Brown',
      hex_value: '392F2E'
    },
    '40' => {
      name: 'Black',
      hex_value: '31302C'
    }
  }

end
