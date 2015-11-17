require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test 'add new cart item' do
    cart = Cart.new
    cart.add_item 1
    assert !cart.isCartEmpty?, 'Cart is empty. New cart item failed to save !!'
  end

  test 'add more quantity of same product in cart' do
    cart = Cart.new
    8.times { cart.add_item 1 }
    assert_equal cart.items.length, 1
    assert_equal cart.items.first.quantity, 8
  end

  test 'search product within cart' do
    product = Product.create! name: 'Desk', price: 12, category_id: 1

    cart = Cart.new
    cart.add_item product.id

    assert_kind_of Product, cart.items.first.product
  end

  test 'serialized cart data into hash' do
    cart = Cart.new
    cart.add_item 1

    assert_equal cart.serialize, session_hash["cart"]
  end

  test 'build cart data from hash' do
    cart = Cart.build_from_hash session_hash

    assert_equal 1, cart.items.first.product_id
  end

  private

  def session_hash
    {
        "cart" => {
            "items" => [
                {"product_id" => 1, "quantity" => 1}
            ]
        }
    }
  end

end