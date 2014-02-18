get '/' do
  erb :index
end

post '/' do
  user_word = params[:word].chomp
  @array = []
  puts "Let's do this!"
  Word.all.each do |word|
    puts word.word
    puts user_word
    if word.word.chars.sort == user_word.chars.sort
      puts "yay a match"
      @array << word.word
    end
  end
  erb :words_list
end