class Word

  @@word_array = []
  define_method(:initialize) do |word|
    @word = word
    @id = @@word_array.length().+(1)
  end

  define_method(:word) do
    @word
  end

  define_method(:id) do
    @id
  end



end
