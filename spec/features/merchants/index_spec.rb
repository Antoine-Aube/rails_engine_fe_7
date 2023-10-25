require 'rails-helper'

RSpec.describe "Merchants display pages" do 
  describe "when I visit /merchants" do 
    it "Show the name of each merchants as a link to their show page" do 


      visit "/merchants"

      expect(page).to have_link()
    end
  end
end