text = File.open(APP_ROOT.join("db", 'words.txt'))

text.each_line do |line|
  Word.create(word: line.chomp)
end