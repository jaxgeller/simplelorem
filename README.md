# Simplelorem

[![Build Status](https://travis-ci.org/jaxgeller/simplelorem.svg)](https://travis-ci.org/jaxgeller/simplelorem)

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
sentence_count = 2

training_text = "Y Combinator., raising a round, Series A, cash flow, scalability, uber for X, next big thing., Steve Jobs, MVP, TechCruch!, hacker, code, big data, hackernews, designernews, sublime text, code artisan, ruby on rails, AWS, digitalocean."

generator = Simplelorem::Generator.new(training_text))
generator.generate(sentence_count)

> Sublime text hacker uber for X cash flow code artisan. Y combinator code sublime text raising a round uber for X Series A ruby on rails next big thing.
```

+ __Training text is expected to be tokenized by commas.__ It will automatically prune extra whitespace and punctuation.

+ The generator will then take care of punctuation, capitlization, and delimeters like commas and semicolons at runtime.

+ Sentence length is random from 6 to 22 words.
