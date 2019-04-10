require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < MiniTest::Test
  def setup
    @cheese = Ingredient.new('Cheese', 'C', 100)
  end

  def test_ingredient_class_exists
    assert_instance_of Ingredient, @cheese
  end

  def test_ingredient_has_a_name
    assert_equal 'Cheese', @cheese.name
  end

  def test_ingredient_has_a_measurement_unit
    assert_equal 'C', @cheese.unit
  end

  def test_ingredient_has_calories
    assert_equal 100, @cheese.calories
  end
end
