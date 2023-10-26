class MerchantsController < ApplicationController
  def index
    facade = MerchantFacade.new
    @merchants = facade.merchants
  end

  def show
    # require 'pry';binding.pry
    facade = MerchantFacade.new
    @items = facade.merchant_items(params[:id])
  end
end