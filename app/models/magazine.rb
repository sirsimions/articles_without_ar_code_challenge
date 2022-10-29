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

end


daily= Magazine.new("The standard", "Daily News")
dail= Magazine.new("Taifa Leo", "Taarifa")
dai= Magazine.new("Nation", "Daily News")

puts daily.name
puts daily.category

puts dail.name
puts dail.category

puts dai.name
puts dai.category

puts Magazine.all
