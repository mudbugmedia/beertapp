class BeerProfile < ActiveRecord::Base

  def flavors
    [flavor_esthers, flavor_alcoholic, flavor_citrus, flavor_hoppy, flavor_floral, flavor_spicy, flavor_malty, flavor_toffee, flavor_burnt, flavor_sweet, flavor_sour, flavor_bitter, flavor_astringent, flavor_full_bodied, flavor_lingers]
  end
end
