require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    new_string = self.tr("!",".")
    new_string = new_string.tr("?",".")
    split_sentences = new_string.split(".")
    split_sentences.delete("")
    split_sentences.length
  end
end