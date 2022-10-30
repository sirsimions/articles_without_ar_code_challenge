# require 'pry'

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
#Author

author_1 = Author.new("K. Katana")
author_2 = Author.new("M. Mwandishi")
author_3 = Author.new("O. Simion")

#Magazines

magazine_1 = Magazine.new("Taifa Leo", "Habari")
magazine_2 = Magazine.new("Business Daily", "Business")
magazine_3 = Magazine.new("Relationship", "Lifestyle")
magazine_4 = Magazine.new("Parenting", "Family")

#Articles

article_1 = Article.new(author_1, magazine_1, "Tembea Kenya")
article_2 = Article.new(author_1, magazine_2, "Tembea Kenya inua uchumi")
article_3 = Article.new(author_2, magazine_1, "How to stop Smoking")
article_4 = Article.new(author_2, magazine_2, "Living a Purposeful Life")
article_5 = Article.new(author_3, magazine_3, "Living For Each Other")
article_6 = Article.new(author_3, magazine_4, "Parenting Tips")


pp author_1.articles
pp author_2.articles
pp author_3.articles


### DO NOT REMOVE THIS
# binding.pry

0
