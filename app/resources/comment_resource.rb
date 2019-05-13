class CommentResource < ApplicationResource
  attribute :body, :string
  attribute :active, :boolean
  attribute :created_at, :datetime, writable: false
  attribute :post_id, :integer, only: [:filterable]

  belongs_to :post
end
