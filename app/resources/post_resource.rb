class PostResource < ApplicationResource
  attribute :title, :string
  attribute :upvotes, :integer
  attribute :downvotes, :integer
  attribute :active, :boolean
  attribute :topic_id, :integer

  belongs_to :topic
  has_many :comments
end
