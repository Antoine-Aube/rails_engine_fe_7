class MerchantFacade
  # def initialize(merchant)
  #   @merchant = merchant
  # end

  def merchants
    json = service.get_merchants
    json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end.first(10)
  end

  def merchant_items(merchant)
    json = service.get_merchant_items(merchant)
    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def service
    MerchantService.new
  end
end