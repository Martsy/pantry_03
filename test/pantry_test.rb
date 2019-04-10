require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require './lib/pantry'

class PantryTest < MiniTest::Test
  def setup
    @pantry = Pantry.new
    @cheese = Ingredient.new('Cheese', 'C', 100)
  end

  def test_pantry_class_exists
    assert_instance_of Pantry, @pantry
  end
end
