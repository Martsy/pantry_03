class Recipe
  attr_reader :name, :ingredient_list


  def initialize(name)
    @name = name
    @ingredient_list = {}
  end

  def add_ingredient(ingredient, amount)
    @ingredient_list[ingredient] = amount
  end

  def ingredient_list(ingredient)
    @ingredient_list[ingredient]
  end

  def ingredients
    @ingredient_list.collect { |ingredient, amount| ingredient }
  end

  def calories
    @ingredient_list.sum { |ingredient, amount| ingredient.calories * amount }
  end

end
