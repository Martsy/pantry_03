class Pantry
  attr_reader :stock

  def initialize(name)
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, amount)
    @stock[ingredient] + amount
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredient_list.all do |ingredient, amount|
      @stock[ingredient] >= amount
    end
  end

end
