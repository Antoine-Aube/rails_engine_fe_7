require "rails_helper"

RSpec.describe "Searching for a merchant" do 
  describe "when I search for a merchant" do 
    it "returns a merchants name on it's own page", :vcr do 
      visit "/merchants"

      expect(page).to have_field(:q)

      fill_in 'search', with: 'Hand'
      click_button('Find Merchant')

      expect(current_path).to eq("/merchants/searched_merchants")
      expect(page).to have_content("Hand, Boyer and Mitchell")
    end
  end
end