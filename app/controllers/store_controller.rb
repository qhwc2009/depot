class StoreController < ApplicationController
  include CounterControl

  before_action :increment_counter, only: [:index]

  def index
    @products = Product.order(:title)
  end
end
