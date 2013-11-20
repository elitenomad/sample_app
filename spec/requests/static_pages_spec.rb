require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have content 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1',:text => 'Sample App')
    end

    it "should have title 'Home'" do
    	visit '/static_pages/home'
    	page.should have_title('Home')
    end
  end

  describe "Help page" do
    it "should have content 'Help Page'" do
    	visit '/static_pages/help'
    	page.should have_selector('h1', :text => 'Help Page')
    end

    it "should have title right" do
    	visit '/static_pages/help'
    	page.should have_title('Help')
    end
  end

  describe "About page" do
    it "should have content 'About US'" do
    	visit '/static_pages/about'
    	page.should have_selector('h1', :text => 'About US')
    end

    it "should have title 'About US'" do
    	visit '/static_pages/about'
    	page.should have_title("About US")
    end
  end

  describe "Contact page" do
    it "should have h1 'Contact US'" do
    	visit '/static_pages/contact'
    	page.should have_selector('h1', :text => 'Contact US')
    end

    it "should have title 'Contact US'" do
    	visit '/static_pages/contact'
    	page.should have_title("Contact US")
    end
  end
end
