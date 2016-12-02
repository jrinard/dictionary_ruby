class Definition

  @@def_array = []

  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@def_array.length().+(1)

  end

  define_method(:single_definition) do
    @definition
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@def_array = []
  end

  define_method(:save) do
    @@def_array.push(self)
  end

  define_singleton_method(:clear) do
    @@def_array = []
  end

  define_singleton_method(:find) do |identification|
    found_def = nil
    @@vehicles.each() do |temp_def|
      if temp_def.id().eql?(identification.to_i())
        found_def = temp_def
      end
    end
    found_def
  end

end
