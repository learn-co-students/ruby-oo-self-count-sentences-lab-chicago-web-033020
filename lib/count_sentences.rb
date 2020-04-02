require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # / \.|\?|\! / <-- in between is what matters. The "|" seperates
    # meaning, ., ?, and ! will be "split"
    # and then delete if a word/ sentence < 2
    # and finally returning the length(size)
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.length
  end
end
