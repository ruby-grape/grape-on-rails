require 'spec_helper'

describe WelcomeController, type: :request do
  describe "GET 'index'" do
    it 'returns http success' do
      get welcome_index_path
      expect(response).to be_successful
    end
  end
end
