require 'rails_helper'

RSpec.describe TopicResource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'topics',
          attributes: attributes_for(:topic)
        }
      }
    end

    let(:instance) do
      TopicResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { Topic.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:topic) { create(:topic) }

    let(:payload) do
      {
        data: {
          id: topic.id.to_s,
          type: 'topics',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      TopicResource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { topic.reload.updated_at }
      # .and change { topic.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:topic) { create(:topic) }

    let(:instance) do
      TopicResource.find(id: topic.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { Topic.count }.by(-1)
    end
  end
end
