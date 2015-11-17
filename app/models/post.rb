class Post < ActiveRecord::Base
  belongs_to :writer

  def self.published
    return Post.where("publish_date < ?", Time.now)
  end

  def self.by_author(author_name)
    published_posts = Post.published
    return published_posts.where(author_name: author_name)
  end

  def self.most_recent
    Post.published.max_by do |p|
      p.publish_date
    end
  end






end
