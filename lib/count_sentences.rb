require 'pry'

class String

  def sentence?
    
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?") 
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.end_with?("!") 
      return true
    else
      return false
    end
  end

  def count_sentences
    # if self.sentence? 
    # self.split(/[.?!]+/).count  #this regex will just check for (.?!), still works
    self.split(/[.?!]+(?=\s|\z)/).count # this regex will count for spaces (s) right after (.?!)
    # end
  end
end

my_sentence=String.new("This is a sentence! This is another sentence, and another? I don't know what else to type")
my_sentence2= String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
binding.pry