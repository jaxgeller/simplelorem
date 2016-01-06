require "simplelorem/version"

module Simplelorem
  class Generator
    def initialize(text)
      @text = self.sanitize text
      @last_word = ''
      @avail_punct = ['.', '.', '.', '.', '.', '.', '.', '.', '!', '?']
    end

    def sanitize(text)
      text.gsub(/\n|\t/,'').split(',').map { |i| i.gsub(/\.|\?|\!/, '').split.join(' ') }
    end

    def get_unique_word()
      word = @text.sample

      while word == @last_word
        word = @text.sample
      end

      @last_word = word
    end

    def generate_sentence()
      sentence = ""
      length = rand(8..25)

      while (sentence.split.size <= length) do
        word = self.get_unique_word
        word += [',', ',', ',', ';', ' --'].sample if rand < 0.005
        word += ' '
        sentence += word
      end

      sentence[0] = sentence[0].capitalize
      sentence = sentence.chomp(' ')
      sentence += @avail_punct.sample

      puts sentence
      puts length
      puts
      return sentence
    end

    def generate(count)
      sentences = []

      while count > 0
        sentences.push self.generate_sentence
        count -= 1
      end

      sentences.join ' '
    end
  end
end
