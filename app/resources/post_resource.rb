class PostResource < ApplicationResource
  attribute :title, :string
  attribute :upvotes, :integer
  attribute :active, :boolean

  belongs_to :topic
  has_many :comments
end
