require 'pry'

class String

  attr_accessor :string

  def sentence?
    self.end_with?(".")
    
    # my bad solution:
    # if self[-1] == "."
    #   true
    # else
    #   false
    # end
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = 0
    sentences += self.squeeze.count('.') + self.squeeze.count('?') + self.squeeze.count('!')
    sentences
    # binding.pry

    # better solution:
    # self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end