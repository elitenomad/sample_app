require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    before { visit root_path }
    it "should have content 'Sample App'" do
    	page.should have_selector('h1', text: 'Sample App')
    end

    it "should have title 'Home'" do
    	page.should have_title('Ruby on Rails Tutorial App')
    end

     it "should not have a custom page title" do
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    before do
      visit help_path
    end

    it "should have content 'Help Page'" do
    	
    	page.should have_selector('h1', text: 'Help Page')
    end

    it "should have title right" do
    	
    	page.should have_title('Ruby on Rails Tutorial App | Help')
    end
  end

  describe "About page" do
    before do
      visit about_path
    end
    it "should have content 'About US'" do
    	
    	page.should have_selector('h1', text: 'About US')
    end

    it "should have title 'About US'" do
    	
    	page.should have_title("Ruby on Rails Tutorial App | About US")
    end
  end

  describe "Contact page" do
    before do
      visit contact_path
    end
    it "should have h1 'Contact US'" do
    	page.should have_selector('h1', text: 'Contact US')
    end

    it "should have title 'Contact US'" do
    	page.should have_title("Ruby on Rails Tutorial App | Contact US")
    end
  end
end
