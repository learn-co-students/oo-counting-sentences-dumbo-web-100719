require 'pry'

class String

  attr_accessor :string

  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    if self[-1] == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true
    else
      false
    end
  end

  def count_sentences
    sentences = 0
    sentences += self.squeeze.count('.') + self.squeeze.count('?') + self.squeeze.count('!')
    sentences
    # binding.pry
  end
end