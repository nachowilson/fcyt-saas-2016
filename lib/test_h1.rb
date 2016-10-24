require_relative 'hw1'

def init
  fa = FileAnalizer.new("words.txt")
  p fa.calculate_total_lines
  p fa.max_word_line
end

init()