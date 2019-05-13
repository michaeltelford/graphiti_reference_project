class TopicResource < ApplicationResource
  attribute :title, :string
  attribute :active, :boolean

  has_many :posts
end
