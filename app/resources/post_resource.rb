class PostResource < ApplicationResource
  attribute :title, :string
  attribute :title_upcase, :string
  attribute :upvotes, :integer
  attribute :downvotes, :integer
  attribute :active, :boolean
  attribute :topic_id, :integer

  extra_attribute :age, :float do
    @object.time_since_creation
  end

  belongs_to :topic
  has_many :comments

  stat upvotes: [:minimum, :maximum]
end
