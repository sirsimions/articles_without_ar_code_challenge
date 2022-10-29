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


art1= Article.new("Kazungu Tajiri", "Maisha Leo", "Tembea Kenya")
art2= Article.new("Katana Mlenga", "Life style", "How to stop smoking")

puts art1.author
puts art1.magazine
puts art1.title

puts art2.author
puts art2.magazine
puts art2.title
puts Article.all

