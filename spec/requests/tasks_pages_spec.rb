require 'spec_helper'

describe "tasks pages" do

  describe "index page" do

    it "should have the content 'Home'" do
      visit '/tasks/index'
      expect(page).to have_content('Home')
      expect(page).to have_title("Home")
    end
  end

  describe "New page" do
    
    it "should have the content 'New Task'" do
      visit '/tasks/new'
      expect(page).to have_content('New Task')
      expect(page).to have_title("New")
    end
  end
end