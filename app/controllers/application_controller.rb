class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :find_categories

  def initialize_cart
    @cart = Cart.build_from_hash session
  end

  def find_categories
    @categories = Category.all
  end
end
