class String
  define_method(:word_count) do |count|
    total_instance = 0
    texts = self.downcase.split(" ")
    texts.each() do |word|
      if text_word == count
        total_instance += 1
      end
    end
    total_instance
  end
end
