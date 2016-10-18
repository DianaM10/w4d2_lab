require('minitest/autorun')
require('minitest/rg')
require_relative('../models/shoe_order')

class TestShoeOrder < MiniTest::Test

  def setup
    options = {
      'name' => "Hairy Maclary",
      'address' => "Oban",
      'style' => "Concerto",
      'size' => "7",
      'quantity' => "3"
    }
    @shoe_order = ShoeOrder.new(options)
  end

  def test_order
    assert_equal('Hairy Maclary', @shoe_order.name)
    assert_equal('Oban', @shoe_order.address)
    assert_equal('Concerto', @shoe_order.style)
    assert_equal('7', @shoe_order.size)
    assert_equal(3, @shoe_order.quantity)
  end

  


end
