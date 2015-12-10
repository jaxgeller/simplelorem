require "simplelorem/version"

module Simplelorem
  class Generator
    def initialize(text)
      @text = self.sanitize text
    end

    def sanitize(text)
      text.gsub(/\n|\t/,'').split(',').map { |i| i.gsub(/\.|\?|\!/, '').split.join(' ') }
    end

    def generate_sentence()
      sentence = []
      sentence_length = rand 6..22

      while sentence_length > 0
        word = @text.sample
        word += [',', ';', ' --'].sample if rand < 0.0025 && sentence_length > 2
        sentence.push word
        sentence_length -= 1
      end

      sentence[0] = sentence[0].capitalize
      sentence[sentence.length-1] = sentence[sentence.length-1] += ['.', '!', '?'].sample

      sentence.join ' '
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
