class String
  define_method(:word_count) do |count|
    result = 0
    words = self.downcase.split(" ")
    words.each() do |word|
      if word == count
        result = result.+(1)
      end
    end
    result
  end
end
