# Simplelorem

a bring-your-own-training-text lorem ipsum generator. It's simple and easy to use, and fast.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simplelorem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simplelorem

## Usage

Generate a new instance, takes in training text.

```ruby
sentence_count = 10
generator = Simplelorem::Generator.new("My training, text, here"))
generator.generate(sentence_count)
```

Training text is expected to be tokenized by commas. For example,

`"this, is, my, training, text"`
