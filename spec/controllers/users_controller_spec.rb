require 'spec_helper'

describe UsersController do

  render_views

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end

    it "it should contain right title" do
      get 'new'
      response.should have_selector(:title, :content => @base_title + "| Sign Up")
    end

  end

end
