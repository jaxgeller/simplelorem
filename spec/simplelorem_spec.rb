require 'spec_helper'

describe Simplelorem do
  it 'has a version number' do
    expect(Simplelorem::VERSION).not_to be nil
  end

  g = Simplelorem::Generator.new(File.open("spec/lorem.txt", "r").read)

  it 'inits properly' do
    expect(g).not_to be nil
  end

  it 'sanitizes text correctly' do
    unsanitized = g.sanitize('This!,   is     ,not,          sanitized????').join ' '
    sanitized = ["This", "is", "not", "sanitized"].join ' '

    expect(unsanitized).to eq(sanitized)
  end

  it 'generates a sentence correctly' do
    sentence = g.generate_sentence

    expect(sentence).not_to be nil
    expect(sentence).to be_a(String)
    expect(sentence.split(/\.|\?|\!/).length).to eq(1)
  end

  it 'generates sentences correctly' do
    sentence = g.generate(10)

    expect(sentence).not_to be nil
    expect(sentence).to be_a(String)
    expect(sentence.split(/\.|\?|\!/).length).to eq(10)
  end
end
