require 'rails_helper'

RSpec.describe "topics#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/topics", payload
  end

  describe 'basic create' do
    let(:params) do
      attributes_for(:topic)
    end
    let(:payload) do
      {
        data: {
          type: 'topics',
          attributes: params
        }
      }
    end

    it 'works' do
      expect(TopicResource).to receive(:build).and_call_original
      expect {
        make_request
        expect(response.status).to eq(201), response.body
      }.to change { Topic.count }.by(1)
    end
  end
end
