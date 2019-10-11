require 'pry'

class String

  def sentence?
    if self.include?('.')
      return true
    end
    return false
  end

  def question?
    if self.include?('?')
      return true
    end
    return false
  end

  def exclamation?
    if self.include?('!')
      return true
    end
    return false
  end

  def count_sentences
    self.split(/\.|\?|\!/).reject { |s| s.empty? }.size
    # binding.pry 
  end

end
