require 'pry'

class String

  # attr_accessor :str

  # def initialize(str)
  #   @str = str
  # end

  def sentence?
    self.end_with?('.') ? true : false
  end

  def question?
    self.end_with?('?') ? true : false
  end

  def exclamation?
    self.end_with?('!') ? true : false
  end

  def count_sentences
    self.split(/[.?!]+/).count
  end
end

# my_string = StringChecker.new("hello, my name is isaac.")
# binding.pry