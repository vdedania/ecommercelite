class CartsController < ApplicationController
  before_filter :initialize_cart

  def add
    @cart.add_item params[:id]

    session["cart"] = @cart.serialize

    product = Product.find params[:id]
    redirect_to :back, notice: "Added #{product.name} to cart."
  end

  def show
  end

  def checkout
    @order_form = OrderForm.new user: User.new
  end

  def remove
    shopping_cart = Cart.build_from_hash(session)
    item_index_to_delete = shopping_cart.items.find_index { |item| item.product_id == params[:id] }

    @cart.items.delete_at(item_index_to_delete)
    session['cart'] = @cart.serialize

    redirect_to :back
  end

  def delete_value(value)
    delete_if { |k, v| v == value }
  end
end