require 'rails_helper'

RSpec.describe "Merchants Items display page" do 
  describe "when I visit /merchants/:id" do 
    it "Show the name of each merchants as a link to their show page", :vcr do 
      visit "/merchants/1"

      expect(page).to have_content("Item Nemo Facere")
    end
  end
end