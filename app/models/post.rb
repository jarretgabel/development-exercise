class Post < ActiveRecord::Base

  after_save :slugify

  validates_presence_of :title

  def author
    'Bob Loblaw'
  end

  def posted_at
    'August 6, 2015'
  end

  def location
    'New York, NY'
  end

  def tags
    ['environment', 'swift', 'fungus']
  end

  def background
    'Ji9qebSpSlSbnsWRZnDX__MG_9520.jpg'
  end

  def background_mobile
    'Ji9qebSpSlSbnsWRZnDX__MG_9520_mobile.jpg'
  end

  def slugify
    self.slug = self.title.parameterize
    save
  end

end
