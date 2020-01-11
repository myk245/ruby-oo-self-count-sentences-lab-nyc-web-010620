require 'pry'

class String

  #this is an instance method, so we need to use the self keyword within this method
  #to refer to the string (which is an instance of the String class) on which the method is being called 
  
  #the "#end_with?" method returns a Boolean value of "true" or "false"
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

 # by calling split, we get an array of the sentences within the string passed in 
 # to then get the number of sentences, we call the count method on the result we got from the split method
  def count_sentences
    self.split(/[.?!]/).delete_if{|element| element.size < 2}.count

    # binding.pry
    
    # array_sentences = self.split(/[.?!]/) => array of the strings split into sentences by punctuation
    # to get rid of the empty "strings" created by splitting up double punctuation marks (ex: !!, ?!), we call the delete_if method
    # if the size of the string is less than 2 (since the empty strings will have a size of 2 since it returns "")
    # now, to get the number of sentences, we count the number of elements in the array 
    
   
    # simple_string = "one. two. three. this is another sentence."
    # complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
    # "This, well, is a sentence. This is too!! And so is this, I think? Woo...".split(/[.?!]/) 
    # => ["This, well, is a sentence", " This is too", "", " And so is this, I think", " Woo"]
    # Since calling split on the string "This is too!!" will separate the string into 2 sentences (due to there being 2 "!!"),
    # we need to get rid of the empty string in order to get an accurate count of the sentences. 
  end
end