class MerchantService

  def get_merchants
    get_url("/merchants")
  end

  def get_url(url)
    conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn 
    Faraday.new(url: "http://localhost:3000")
  end
end