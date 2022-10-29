require_relative 'article'

class Author
  attr_reader :name, :articles, :magazines

  def initialize(name)
    @name = name
  end

  def articles
    Article.all.filter do |article|
      article.author == self
    end
  end

  def magazines
    articles.collect do |article|
      article.magazine.uniq
    end
  end

  def add_article(magazine, title)
    Article.new(magazine, title)
  end

end
