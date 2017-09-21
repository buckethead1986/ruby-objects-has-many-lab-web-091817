class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    @posts << new_post
    @@post_count += 1
    new_post.author = self
  end

  def self.post_count
    @@post_count
  end
end
