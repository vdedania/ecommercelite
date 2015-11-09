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
  end

  def remove
    #shopping_cart = Cart.build_from_hash session
    #shopping_cart = shopping_cart.except(params[:id])

    updated_items = shopping_cart.items.find { |item| item.product_id != params[:id] }
    #@cart.items.delete(params[:id]);
    #@cart.items = updated_items

    #items = []
    #shopping_cart.items.each do |newItem|
     # items << CartItem.new(newItem.product_id)
    #end

    #if items
      #new_data = updated_items.each_with_object({}) { |v, h| h[v] = f(v) }
     # session["cart"] = items
    #else
     # session["cart"] = nil
    #end

    redirect_to :back
  end

  def delete_value(value)
    delete_if { |k,v| v == value }
  end
end