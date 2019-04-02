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
    keep_count = 0
    arr = self.split(' ')#.each_with_index { |word| word == sentence? || question? || exclamation? }
    arr.each do |word|
      if word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
        keep_count += 1
      end
    end
    keep_count
  end

### END CLASS ###
end
