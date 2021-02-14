class Book
  attr_accessor :author, :page_count     #remove attribute accessor for genre & add a attribute reader instead
  attr_reader :title, :genre

  GENRES = []    #THIS IS A CLASS CONSTANT

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  # create the writer for genre and add the logic for the class constant
  def genre=(genre)
    @genre = genre
    GENRES << genre
  end

end


#this syntax, Book::GENRES teslls us about a couple of things.
#     1. whenever we see :: in indicates "name spacing". in other words, it tells us that the thing on the right side of the colons is a thing defined within the context, or name space, of the thing on the left side of the colons.
#     2. in this case, this is telling us that there is a constant, GENRES(we know its a constant because it's all written in all caps), that is defined within our Book class
#     3. this is known as a Class constant


#REMEBER:::: OUR genre= method AND OUR genre METHOD IS CREATED BY THE FOLLOWING LINE OF CODE---> attr_accessor for :genre