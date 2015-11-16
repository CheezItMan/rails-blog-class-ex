class Post < ActiveRecord::Base
  belongs_to :writer

  def self.published
    return Post.where("published_date < ?", Time.now)
  end

  def self.by_author(author_name)
    published_posts = Post.published
    return published_posts.where(author_name: author_name)
  end
end
