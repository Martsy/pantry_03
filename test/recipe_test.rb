require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < MiniTest::Test
  def setup
    @mac_and_cheese = Recipe.new('Mac and Cheese')
    @cheese = Ingredient.new('Cheese', 'C', 100)
    @mac = Ingredient.new("Macaroni", "oz", 200)
  end

  def test__recipe_class_exists
    assert_instance_of Recipe, @mac_and_cheese
  end

  def test_recipe_has_a_name
    assert_equal 'Mac and Cheese', @mac_and_cheese.name
  end

  def test_recipe_has_no_ingredients_listed
    assert_equal ({}), @mac_and_cheese.ingredient_list
  end

  def test_recipe_can_add_ingredients_with_quantity
    @mac_and_cheese.add_ingredient(@cheese, 2)
    @mac_and_cheese.add_ingredient(@mac, 8)
    assert_equal 2, @mac_and_cheese.ingredient_list(@cheese)
    assert_equal 8, @mac_and_cheese.ingredient_list(@mac)
  end

  def test_pantry_begins_with_no_cheese
    @pantry.stock_check(@cheese)
    assert_equal 0, @mac_and_cheese.stock(@cheese)
  end

  def test_pantry_can_restock
    @pantry.restock(@cheese, 5)
    @pantry.restock(@cheese, 10)
    assert_equal 15, @mac_and_cheese.stock_check(@cheese)
  end

  def test_enough_ingredients
    @pantry.restock(@cheese, 5)
    @pantry.restock(@cheese, 10)
    assert_equal false, @pantry.enough_ingredients_for?(@recipe)
  end
end
