require 'spec_helper'

describe OrderController do

  describe "GET 'name:string'" do
    it "should be successful" do
      get 'name:string'
      response.should be_success
    end
  end

  describe "GET 'surname:string'" do
    it "should be successful" do
      get 'surname:string'
      response.should be_success
    end
  end

  describe "GET 'address:text'" do
    it "should be successful" do
      get 'address:text'
      response.should be_success
    end
  end

end
