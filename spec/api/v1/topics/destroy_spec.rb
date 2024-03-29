require 'rails_helper'

RSpec.describe "topics#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/topics/#{topic.id}"
  end

  describe 'basic destroy' do
    let!(:topic) { create(:topic) }

    it 'updates the resource' do
      expect(TopicResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { Topic.count }.by(-1)
      expect { topic.reload }
        .to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq('meta' => {})
    end
  end
end
