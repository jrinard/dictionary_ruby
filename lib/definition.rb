class Definition

  @@def_array = []
  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@def_array.length().+(1)
    @def_array = []
  end

  define_method(:definition) do
    @definition
  end

  define_method(:id) do
    @id
  end

  # define_method(:definition) do
  #   @definition_array
  # end
  #
  define_singleton_method(:all) do
    @@def_array
  end

  define_method(:save) do
    @@def_array.push(self)
  end

  define_singleton_method(:clear) do
    @@def_array = []
  end

  define_singleton_method(:find) do |id|
    found_def = nil
    @@def_array.each() do |temp_def|
      if temp_def.id().eql?(id)
        found_def = temp_def
      end
    end
    found_def
  end


end
