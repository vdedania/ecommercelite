class OrdersController < ApplicationController
  before_filter :initialize_cart

  def create
    @order_form = OrderForm.new(
        user: User.new(order_params[:user]),
        cart: @cart
    )

    if @order_form.save
      session["cart"] = nil
      redirect_to root_path, :notice => 'Thank you for your order.'
    else
      render 'carts/checkout'
    end
  end

  private

  def order_params
    params.require(:order_form).permit(
        user: [:name, :address, :phone, :city, :country, :postal_code, :email]
    )
  end
end