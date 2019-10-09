require 'pry'

class String

  def sentence?
    self.end_with?(".")
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
    new_array = self.split(/[.?!]/).reject {|string| string.empty?}
    return new_array.length
  end
end