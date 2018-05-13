class StoreController < ApplicationController
  include CounterControl
  include CurrentCart

  before_action :increment_counter, only: [:index]
  before_action :set_cart

  def index
    @products = Product.order(:title)
  end
end
