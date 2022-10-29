# Please copy/paste all three classes into this file to submit your solution!
class Article
    attr_reader :author, :magazine, :title
    
    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

end


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

  def topic_areas
    magazines.collect do |mags|
      mags.category.uniq
    end
  end

end


require_relative 'article'
class Magazine
    attr_accessor :name, :category

    @@all= []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

def self.all
  @@all
end

def contributors
  Article.all.filter do |magazine|
    magazine.magazine == self
  end.collect do |magz|
    magz.author
  end
end

def self.find_by_name(name)
  self.all.find do |magazine|
    magazine.name == name
  end
end

def article_titles
  Article.all.filter do |magazine|
    magazine.magazine == self
  end.collect do |article|
    article.title
  end
end

def contributing_authors
  Article.all.select do |magazine|
    magazine.magazine == self
  end.collect do |author|
    author.author
  end.uniq.collect do |article|
    article.articles.count > 2
  end
end

end

