
Topic.create! title: 'Development', active: true
topic = Topic.create! title: 'Adventure', active: false
Topic.create! title: 'Mystery', active: true

comment1 = Comment.new(body: 'comment one', active: true)
comment2 = Comment.new(body: 'comment two', active: false)
comment3 = Comment.new(body: 'comment three', active: true)

Post.create!(title: 'My title', upvotes: 10, active: true, topic: Topic.first)
Post.create!(title: 'Another title', upvotes: 20, active: false, topic: Topic.last)
Post.create!(title: 'OMG! A title', upvotes: 30, active: true, topic: Topic.first)
Post.create! \
  title: 'My title!',
  active: true,
  comments: [comment1, comment2, comment3],
  topic: topic
