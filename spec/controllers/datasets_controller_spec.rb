require 'rails_helper'

RSpec.describe DatasetsController, :type => :controller do

  describe "GET api" do
    it "returns http success" do
      get :api
      expect(response).to have_http_status(:success)
    end
  end

end
