require 'rails_helper'

RSpec.describe "Merchants display pages" do 
  describe "when I visit /merchants" do 
    it "Show the name of each merchants as a link to their show page", :vcr do 
      visit "/merchants"

      expect(page).to have_link("Klein, Rempel and Jones")
    end
  end
end