require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author_1 = Author.new("K. Katana")
author_2 = Author.new("M. Mwandishi")

magazine_1 = Magazine.new("Taifa Leo", "Habari")
magazine_2 = Magazine.new("Business Daily", "Business")

article_1 = Article.new(author_1, magazine_1, "Tembea Kenya")
article_2 = Article.new(author_1, magazine_2, "Tembea Kenya inua uchumi")
article_3 = Article.new(author_2, magazine_1, "How to stop smoking")
article_4 = Article.new(author_2, magazine_2, "Living a purposeful life")

pp author_1.articles
pp author_2.articles









### DO NOT REMOVE THIS
binding.pry

0
