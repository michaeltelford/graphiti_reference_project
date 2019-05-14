class Post < ApplicationRecord
  belongs_to :topic
  has_many :comments

  def title_upcase
    title.upcase
  end

  def time_since_creation
    Time.now - created_at
  end
end
