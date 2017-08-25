require 'rails_helper'

RSpec.describe "Diaries", type: :request do
  describe "GET /diaries" do
    it "works! (now write some real specs)" do
      get diaries_path
      expect(response).to have_http_status(200)
    end
  end
end
