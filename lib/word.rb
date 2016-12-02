class Word

  @@word_array = []
  define_method(:initialize) do |word|
    @word = word
    @id = @@word_array.length().+(1)
    @definition_array = []
  end

  define_method(:word) do
    @word
  end

  define_method(:id) do
    @id
  end

  define_method(:definition) do
    @definition_array
  end

  define_singleton_method(:all) do
    @@word_array
  end

  define_method(:save) do
    @@word_array.push(self)
  end

  define_singleton_method(:clear) do
    @@word_array = []
  end

  #finds word
  define_singleton_method(:find) do |id|
    found_word = nil
    @@word_array.each() do |temp_word|
      if temp_word.id().eql?(id)
        found_word = temp_word
      end
    end
    found_word
  end


  define_method(:add_definition) do |temp_def|
    @definition_array.push(temp_def)
  end


end
